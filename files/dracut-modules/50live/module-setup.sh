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
    inst_hook pre-mount 90 "$moddir/live.sh"
}

installkernel() {
    instmods loop squashfs iso9660
}
