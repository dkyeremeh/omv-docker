#!/bin/bash

START_STOP_SRC=https://raw.githubusercontent.com/daleobrien/start-stop-daemon/master/start-stop-daemon.c
FAKE_SYSTEMD_SRC=https://raw.githubusercontent.com/kvaps/fake-systemd/master/systemctl
OMV_INSTALL_SRC=https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install

apt update
apt install -y gcc wget

# Download omv installation and patch it
wget $OMV_INSTALL_SRC -O scripts/install_omv.sh
sed -i "s/^systemd=.*/systemd='systemd'/g" scripts/install_omv.sh

# Install omv
bash scripts/install_omv.sh

# start-stop-daemon
wget $START_STOP_SRC -O start-stop-daemon.c
gcc start-stop-daemon.c -o start-stop-daemon
mv start-stop-daemon /usr/bin/start-stop-daemon
chmod +x /usr/bin/start-stop-daemon

# fake systemd
wget $FAKE_SYSTEMD_SRC -O /usr/bin/systemctl
chmod +x /usr/bin/systemctl