kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- components/deps/libisoburn.bst
- filename: aemeath/usr-image.bst
  config:
    location: '/usr-image'
- filename: aemeath/boot.bst
  config:
    location: '/boot-system'
- filename: aemeath/boot-live.bst
  config:
    location: '/boot-live'

environment:
  E2FSPROGS_FAKE_TIME: '1767369576'

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  build-root: /genimage
  usr-uuid: 8484680c-9521-48c6-9c11-b0720656f69e
  usr-verity-uuid: 77ff5f63-e7b6-4633-acf4-1565b864c0e6

config:
  commands:
  - mkdir -p '%{build-root}/system-efi-root' '%{build-root}/iso-efi-root'
  - cp -rT /boot-system/boot '%{build-root}/system-efi-root'
  - rm '%{build-root}/system-efi-root/vmlinuz'
  - rm '%{build-root}/system-efi-root/initramfs'*
  - cp -rT /boot-live/boot '%{build-root}/iso-efi-root'

  - |
    content_size=$(du -sb '%{build-root}/system-efi-root' | cut -f1)
    system_efi_size=$(( (content_size + 33554432) ))

    cat > "%{build-root}/system-efi.cfg" <<EOF
    image system-efi.img {
        vfat {
            extraargs = "-F32 -n EFI_SYSTEM"
        }
        mountpoint = "/"
        size = $system_efi_size
    }
    config {
      tmppath = "%{build-root}/tmp"
      outputpath = "%{build-root}/genimage-root"
    }
    EOF

    genimage --config "%{build-root}/system-efi.cfg" --rootpath '%{build-root}/system-efi-root'

  - |
    usr_part_uuid=$(jq -r '(.[] | select(.file | match("/10-usr.conf$"))).uuid' /usr-image/compressed.repart.json)
    usr_verity_part_uuid=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).uuid' /usr-image/compressed.repart.json)
    
    cat > "%{build-root}/system.cfg" <<EOF
    image system.img {
        hdimage {
            align = 1M
            partition-table-type = "gpt"
        }
        partition efi {
            partition-type-uuid = "c12a7328-f81f-11d2-ba4b-00a0c93ec93b"
            image = "%{build-root}/genimage-root/system-efi.img"
        }
        partition usr {
            partition-type-uuid = "%{usr-uuid}"
            partition-uuid = "${usr_part_uuid}"
            image = "/usr-image/compressed.usr.raw"
        }
        partition usr_verity {
            partition-type-uuid = "%{usr-verity-uuid}"
            partition-uuid = "${usr_verity_part_uuid}"
            image = "/usr-image/compressed.usr-verity.raw"
        }
    }
    config {
      tmppath = "%{build-root}/tmp"
      outputpath = "%{build-root}/iso_root"
    }
    EOF
    
    genimage --config "%{build-root}/system.cfg" --rootpath /

  - |
    . /usr-image/vars.txt
    content_size=$(du -sb '%{build-root}/iso-efi-root' | cut -f1)
    esp_size=$(( (content_size + 33554432) ))
    
    cat > "%{build-root}/efi.cfg" <<EOF
    image efi.img {
        vfat {
            extraargs = "--invariant -F32 -i${id_efi} -n AEMEATH_EFI"
        }
        mountpoint = "/"
        size = $esp_size
    }
    config {
      tmppath = "%{build-root}/tmp"
      outputpath = "%{build-root}/iso_root"
    }
    EOF
    
    genimage --config "%{build-root}/efi.cfg" --rootpath '%{build-root}/iso-efi-root'

  - |
    xorriso -as mkisofs \
      -o '%{install-root}/aemeath-live_%{image-version}.iso' \
      -iso-level 3 \
      -full-iso9660-filenames \
      -volid "AEMEATH_LIVE" \
      -eltorito-alt-boot \
      -e efi.img \
      -no-emul-boot \
      -isohybrid-gpt-basdat \
      '%{build-root}/iso_root'
