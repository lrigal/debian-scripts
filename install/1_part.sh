#!/bin/bash -x
# Partition and format drive

if [ "$1" = "-wipe" ]
then
  sudo wipefs -a /dev/sda1
  sudo wipefs -a /dev/sda2
  sudo wipefs -a /dev/sda
fi

sudo sfdisk /dev/sda < partitions.sfdisk

sudo mkfs.ext4 /dev/sda2
sudo mkswap /dev/sda1

sudo mount /dev/sda2 /mnt
sudo swapon /dev/sda1
