#!/bin/bash -x
# Setup Users

cp /etc/skel/.bashrc /root

sed -i '/force_color_prompt/s/^#//g' /root/.bashrc
