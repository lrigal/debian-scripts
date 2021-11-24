#!/bin/bash -x
# Generate fstab

sudo bash -c "echo '#<device> <dir> <type> <options> <dump> <fsck>' > /mnt/etc/fstab"
sudo bash -c "echo 'UUID=$(lsblk -rno UUID /dev/sda2) /    ext4 defaults 0 1' >> /mnt/etc/fstab"
sudo bash -c "echo 'UUID=$(lsblk -rno UUID /dev/sda1) none swap defaults 0 0' >> /mnt/etc/fstab"
