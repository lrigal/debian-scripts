#!/bin/bash -x
# Setup Users

##### Setup Root #####

cp /etc/skel/.bashrc /root

sed -i '/force_color_prompt/s/^#//g' /root/.bashrc

echo -e "passw0rd\npassw0rd" | passwd


##### Setup User #####

apt-get -y install sudo

useradd -s /bin/bash -m user

usermod -a -G sudo user

echo -e "passw0rd\npassw0rd" | passwd user


