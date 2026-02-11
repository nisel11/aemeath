kind: stack

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dracut.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/plymouth.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/tpm2-tools.bst
- freedesktop-sdk.bst:components/efitools.bst
- freedesktop-sdk.bst:components/binutils.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- components/aemeath/os-release.bst
- aemeath/repart-config.bst
