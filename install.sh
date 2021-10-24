#!/bin/bash
#
# This file installs the script and all the dependencies

if [ "$EUID" -ne 0 ]; then
    sudo bash $0
    exit
fi

apt-get install -y xclip xautomation libx11-dev libxinerama-dev libxft-dev git
cd LaLista/ && make clean install && cd ..
chmod +x LaLista.sh
