#!/bin/bash -x
# Install base system

# Fix slow DNS lookup with Parallels Desktop 
# not answering both A and AAAA requests (for ipv4 and ipv6)
sudo bash -c "echo 'options single-request-reopen' >> /etc/resolv.conf"

sudo apt-get update
sudo apt-get -y install debootstrap

#sudo debootstrap stable /mnt file:///run/live/medium/
#sudo debootstrap stable /mnt http://ftp.debian.org/debian
#sudo debootstrap stable /mnt http://ftp.us.debian.org/debian
#sudo debootstrap stable /mnt http://deb.debian.org/debian
sudo debootstrap stable /mnt http://mirror.i3d.net/debian
