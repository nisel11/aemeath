#!/bin/bash

check() {
    return 0
}

depends() {
    echo systemd-udevd
    return 0
}

install() {
    inst_multiple mount mkdir losetup blkid
    inst_script "$moddir/live.sh" /usr/bin/aemeath-live-setup
    inst_simple "$moddir/live.service" "$systemdsystemunitdir/aemeath-live-setup.service"
    systemctl --root "$initdir" enable aemeath-live-setup.service
}

installkernel() {
    instmods loop squashfs iso9660
}
