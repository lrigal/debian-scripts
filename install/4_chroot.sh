#!/bin/bash -x
# Change root

sudo cp -r ../configure /mnt/tmp/

#sudo mount -t proc /proc /mnt/proc/
#sudo mount -t sysfs /sys /mnt/sys/
#sudo mount --rbind /dev /mnt/dev/

sudo mount --make-rslave --rbind /proc /mnt/proc
sudo mount --make-rslave --rbind /sys /mnt/sys
sudo mount --make-rslave --rbind /dev /mnt/dev
sudo mount --make-rslave --rbind /run /mnt/run

sudo chroot /mnt /bin/bash /tmp/configure/0_configure.sh /tmp/configure

sudo rm -r /mnt/tmp/configure
