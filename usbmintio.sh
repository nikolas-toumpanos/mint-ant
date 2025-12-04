#!/bin/bash

sudo pacman -Syy
sudo pacman -Suy
sudo pacman -S wget

wget -O linuxmint.iso https://pub.linuxmint.io/stable/22.2/linuxmint-22.2-cinnamon-64bit.iso

sudo dd bs=4M if=./linuxmint.iso of=/dev/sdb status=progress oflag=sync

sudo umount -a
shutdown -h now
