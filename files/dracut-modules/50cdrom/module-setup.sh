check() {
    require_binaries partx losetup || return 1
    return 0
}

install() {

    inst_multiple partx losetup

    inst_simple "${moddir}/sr-loop@.service" "/usr/lib/systemd/system/sr-loop@.service"
    inst_simple "${moddir}/sr-loop-partscan@.service" "/usr/lib/systemd/system/sr-loop-partscan@.service"
    inst_simple "${moddir}/80-sr-loop.rules" "/usr/lib/udev/rules.d/80-sr-loop.rules"
}
