#!/bin/bash -x
# Setup system

##### Set Hostname #####

echo debian > /etc/hostname


##### Set Timezone #####

ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

# Root password
echo -e "passw0rd\npassw0rd" | passwd


##### Generate locales #####

apt-get update
apt-get -y install locales

sed -i '/en_US.UTF-8/s/^#\s//g' /etc/locale.gen

locale-gen