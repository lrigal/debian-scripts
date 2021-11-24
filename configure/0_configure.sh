#!/bin/bash
# Configure operating system

# Change working directory
if [ "$1" ]; then cd $1; fi 

echo "********** 1. Setup system **********"
./1_system.sh

echo "********** 2. Install kernel **********"
./2_kernel.sh

echo "********** 3. Setup users **********"
./3_user.sh

echo "********** 4. Setup network **********"
./4_network.sh

echo "********** 5. Setup applications **********"
./5_application.sh

echo "********** 6. Install bootloader **********"
./6_boot.sh
