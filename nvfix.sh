#!/bin/bash
sudo wget http://paste.ethosdistro.com/raw/ayemasebon -O /opt/ethos/sbin/ethos-oc-nvidia
sudo wget http://paste.ethosdistro.com/raw/pacexifeti -O /opt/ethos/bin/hash-monitor
sudo wget http://paste.ethosdistro.com/raw/apahuhovaz -O /usr/share/initramfs-tools/scripts/init-top/gpulist
sudo chmod +x /opt/ethos/sbin/ethos-oc-nvidia
sudo chmod +x /opt/ethos/bin/hash-monitor
sudo ldconfig; sudo /usr/sbin/update-initramfs -u; sudo /usr/sbin/update-grub
echo "Updated NVIDIA-OC, ETHMINER early boot hash gather, and preboot screens. Reboot now."
