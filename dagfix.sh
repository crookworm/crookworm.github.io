#!/bin/bash

echo "4.8.17-ethos49 kernel installer"
echo "Downloading necessary packages...."
sudo wget http://update.ethosdistro.com/packages/1.2.4/kernel//linux-firmware-image-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb  -O /tmp/linux-firmware-image-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb
sudo wget http://update.ethosdistro.com/packages/1.2.4/kernel/linux-libc-dev_4.8.17-ethos49-6_amd64.deb -O /tmp/linux-libc-dev_4.8.17-ethos49-6_amd64.deb
sudo wget http://update.ethosdistro.com/packages/1.2.4/kernel/linux-headers-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb -O /tmp/linux-headers-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb 
sudo wget http://update.ethosdistro.com/packages/1.2.4/kernel/linux-image-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb -O /tmp/linux-image-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb
sudo wget http://update.ethosdistro.com/packages/1.2.4/kernel/amdgpu-options.conf -O /etc/modprobe.d/amdgpu-options.conf
sudo dpkg -i /tmp/linux-firmware-image-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb /tmp/linux-libc-dev_4.8.17-ethos49-6_amd64.deb /tmp/linux-headers-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb /tmp/linux-image-4.8.17-ethos49_4.8.17-ethos49-6_amd64.deb
echo "Kernel update complete, syncing disks and waiting 5 seconds.  Please reboot when prompt returns."
sync
sleep 5
