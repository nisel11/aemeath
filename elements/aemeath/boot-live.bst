kind: script

build-depends:
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- components/aemeath/os-release.bst
- aemeath/initramfs/deps.bst
- aemeath/initramfs/initial-scripts.bst
- filename: aemeath/usr-image.bst
  config:
    location: '/usr-image'

variables:
  strip-binaries: ''
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  efi-arch: x64
  kcmdline: |
    rw quiet splash mount.usrflags=ro lockdown=confidentiality systemd.firstboot=no root=tmpfs aemeath.live rd.systemd.mask=systemd-repart.service systemd.mask=systemd-repart.service

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

config:
  commands:
  - mkdir -p /fakecap
  - mkdir -p /tmp
  - mkdir -p /var/tmp
  - mkdir -p /boot

  - |
    prepare-image.sh --sysroot / --rootpasswd root \
                     --seed "%{uuidnamespace}" >/tmp/vars

  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/boot bootctl --no-variables install
  - rm /etc/machine-id

  - |
    echo '%{libdir}' >/etc/ld.so.conf

  - |
    dracut -v --xz --reproducible --fstab \
           --no-machineid --kernel-image /boot/vmlinuz \
           --kver $(ls -1 /lib/modules | head -n1) \
           --install 'fsck.btrfs' \
           --install 'mkfs.btrfs' \
           --add-drivers erofs \
           --add-drivers btrfs \
           --add-drivers amdgpu \
           --add-drivers virtio-gpu \
           --add-drivers i915 \
           --libdirs %{libdir} \
           --libdirs %{indep-libdir} \
           --add systemd-repart \
           --add systemd-veritysetup \
           --add crypt \
           --add tpm2-tss \
           --add live

  - mkdir -p "%{install-root}/boot"
  - cp -rT /boot/EFI "%{install-root}/boot/EFI"

  - mkdir -p "%{install-root}/boot/loader"
  - |
    cat <<EOF >%{install-root}/boot/loader/loader.conf
    timeout 5
    editor yes
    console-mode keep
    EOF

  - |
    version="$(ls -1 /usr/lib/modules | head -n1)"
    echo -n "%{kcmdline} usrhash=$(jq -r '(.[] | select(.type | match("^usr-.*-verity$"))).roothash' /usr-image/compressed.repart.json) " > new-cmdline.txt
    ukify build \
      --linux=/boot/vmlinuz \
      --initrd=/boot/initramfs-${version}.img \
      --cmdline=@new-cmdline.txt \
      --output="%{install-root}/boot/EFI/Linux/aemeath_live_%{image-version}.efi"
