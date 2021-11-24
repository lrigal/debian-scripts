#!/bin/bash -x
# Install bootloader

apt-get -y install grub

grub-install /dev/sda

update-grub

sed -i '/^kernel/s/$/ loglevel=3/g' /boot/grub/menu.lst

grub-install /dev/sda