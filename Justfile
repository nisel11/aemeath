[default]
default: build export disk-image

clean: clean-target clean-disks

clean-target:
    rm -rf target

clean-disks:
    rm -rf disks

clean-live:
    rm -rf live

build:
    bst build aemeath/desktop.bst

export: clean-target build
    bst build aemeath/export.bst
    bst artifact checkout aemeath/export.bst --directory target

disk-image: clean-disks build
    bst build aemeath/disk-image.bst
    bst artifact checkout aemeath/disk-image.bst --directory disks

live-image: clean-live build
    bst build aemeath/live-image.bst
    bst artifact checkout aemeath/live-image.bst --directory live
