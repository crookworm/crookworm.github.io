#!/bin/bash
sudo su
cd /opt/miners/ && disallow && minestop && rm -f /opt/miners/claymore-zcash-latest.tar.gz
wget http://update.ethosdistro.com/miners/claymore-zcash/claymore-zcash-latest.tar.gz
tar -xvf claymore-zcash-latest.tar.gz -C /opt/miners/claymore-zcash --strip-components=1
chown -R ethos:ethos /opt/miners/claymore-zcash/*
sed -i "/export GPU_USE_SYNC_OBJECTS=1/aexport GPU_FORCE_64BIT_PTR=1" /home/ethos/.bashrc
chmod +x /opt/miners/claymore-zcash/claymore-zcash && allow && show miner
