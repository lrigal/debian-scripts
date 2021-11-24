#!/bin/bash
# Install operating system

echo "********** 1. Partition and format drive **********"
./1_part.sh $1

echo "********** 2. Install base system **********"
./2_strap.sh

echo "********** 3. Generate fstab **********"
./3_fstab.sh

echo "********** 4. Change root and configure system **********"
./4_chroot.sh

echo "********** 9. Reboot system **********"
./5_exit.sh



