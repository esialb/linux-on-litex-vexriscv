#!/bin/bash
cd images
sudo -s << EOF
mkdir -p /mnt/crab/{boot,rootfs_readonly}
mount /dev/sdb1 /mnt/crab/boot
mount /dev/sdb2 /mnt/crab/rootfs_readonly

rm -rf /mnt/crab/{crab,rootfs_readonly}/{*,.*}
cp -L * -t /mnt/crab/boot
tar -xpf rootfs.tar -C /mnt/crab/rootfs_readonly

umount /dev/sdb2
umount /dev/sdb1
EOF

