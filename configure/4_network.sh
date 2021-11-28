#!/bin/bash -x
# Setup network

echo "auto $(ls /sys/class/net | grep enp)" > /etc/network/interfaces.d/dhcp
echo "iface $(ls /sys/class/net | grep enp) inet dhcp" >> /etc/network/interfaces.d/dhcp

# Fix slow DNS lookup with Parallels Desktop 
# not answering both A and AAAA requests (for ipv4 and ipv6)
echo 'echo "options single-request-reopen" >> /etc/resolv.conf' > /etc/dhcp/dhclient-exit-hooks.d/resolv_options

apt-get -y install openssh-server
