kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/deploy-tools.bst
- components/deps/libisoburn.bst
- os/aemeath/repart-config-iso.bst
- filename: os/aemeath/usr-image.bst
  config:
    location: '/usr-image'
- filename: os/aemeath/boot.bst
  config:
    location: '/sysroot'

variables:
  repart-seed: 9473a621-1617-4679-87e5-031afef28359
  volume-id: "AEMEATH-LIVE"

config:
  commands:
  - mkdir -p definitions
  - cp /usr/lib/repart.d.iso/*.conf definitions

  - |
    rm -rf /sysroot/boot/loader/keys

  - |
    mkdir -p /var/tmp /build/iso-root

  - |
    cp /usr-image/compressed.usr.raw /sysroot/
    cp /usr-image/compressed.usr-verity.raw /sysroot/

  - |
    USR_UUID=$(jq -r '.[0].uuid' /usr-image/compressed.repart.json)
    cat <<EOF >>definitions/20-usr.conf
    UUID=${USR_UUID}
    EOF

  - |
    USR_VERITY_UUID=$(jq -r '.[1].uuid' /usr-image/compressed.repart.json)
    cat <<EOF >>definitions/21-usr-verity.conf
    UUID=${USR_VERITY_UUID}
    EOF

  - |
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --definitions=definitions \
        --empty=create \
        --dry-run=no \
        --size=auto \
        --discard=no \
        --offline=true \
        --no-pager \
        --seed=%{repart-seed} \
        --root=/sysroot \
        --split=true \
        /build/disk.raw \
        --json=pretty \
        >'/build/disk.repart.json'

  - cp /build/disk.esp.raw /build/iso-root/esp.img
  - |
    xorrisofs \
      -o "/build/image.iso" \
      /build/iso-root \
      -partition_offset 480 \
      -e /esp.img \
      -no-emul-boot \
      -boot-load-size 4 \
      -efi-boot-part \
      --efi-boot-image \
      -sysid LINUX \
      -publisher AEMEATH \
      -volid "%{volume-id}"

  - |
    dd if=/build/image.iso of=/build/disk.raw bs=2048 skip=16 count=496 seek=16 conv=notrunc

  - |
    esp_raw_size=$(jq -r '.[]|select(.type=="esp").raw_size' /build/disk.repart.json)
    esp_offset=$(jq -r '.[]|select(.type=="esp").offset' /build/disk.repart.json)
    skip=$(((${esp_offset}+${esp_raw_size})/512))
    dd if=/build/image.iso of=/build/disk.raw bs=512 skip="${skip}" seek="${skip}" count=608 conv=notrunc

  - |
    cp /build/disk.raw "%{install-root}/disk.iso"
