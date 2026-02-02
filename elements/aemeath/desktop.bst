kind: stack

depends:
# Minimal
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/usbutils.bst
- freedesktop-sdk.bst:components/hosts.bst
- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/nsswitch-config.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/tpm2-tools.bst
- freedesktop-sdk.bst:components/efitools.bst
- freedesktop-sdk.bst:components/lvm2.bst
# i686 libraries, just in case
- freedesktop-sdk.bst:cross-compilers/standard-libs-i686.bst
# System services
- freedesktop-sdk.bst:components/plymouth.bst
- freedesktop-sdk.bst:components/networkmanager.bst
- freedesktop-sdk.bst:components/wpa-supplicant.bst
- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/wireplumber.bst
- freedesktop-sdk.bst:components/flatpak.bst
- components/deps/systemd-sysupdated.bst
- components/other/tailscale.bst
# System utilities
- freedesktop-sdk.bst:components/procps.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/nano.bst
- freedesktop-sdk.bst:components/containers-common.bst
- freedesktop-sdk.bst:components/podman.bst
- freedesktop-sdk.bst:components/sudo.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rsync.bst
- components/deps/dbus-daemon-launch-helper.bst
- components/other/toolbox.bst
# System libraries
- freedesktop-sdk.bst:vm/mesa-default.bst
# Other utilities
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/findutils.bst
# Plasma and Gear
- components/plasma.bst
- components/gear.bst
# Configurations
- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:vm/base-filesystem.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/config/resolved.bst
- freedesktop-sdk.bst:vm/config/useradd-default.bst
- freedesktop-sdk.bst:vm/config/systemd-homed-firstboot.bst
- components/aemeath/os-release.bst
- components/aemeath/flathub-config.bst
- components/aemeath/settings.bst
- components/aemeath/systemd-preset.bst
- components/aemeath/systemd-preset-all.bst
