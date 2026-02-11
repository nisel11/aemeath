#!/bin/bash

for i in {1..10}; do
    DEV=$(blkid -L "AEMEATH_LIVE" 2>/dev/null || true)
    [ -n "$DEV" ] && break
    sleep 1
done
[ -n "$DEV" ] || exit 1

mkdir -p /run/live
mount -o ro "$DEV" /run/live

losetup -P -f --show -r /run/live/system.img

sleep 1
udevadm trigger
udevadm settle --timeout=10

exit 0
