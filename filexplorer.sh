#!/bin/bash
echo "Installation d'Utorrent"
wget http://download.ap.bittorrent.com/track/beta/endpoint/utserver/os/linux-x64-ubuntu-13-04 -O utserver.tar.gz
sudo tar xvf utserver.tar.gz -C /opt/
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb
sudo apt install ./libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb
sudo ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
utserver -settingspath /opt/utorrent-server-alpha-v3_3/ -daemon
echo "yourip:8080/gui"