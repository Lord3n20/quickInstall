#!/bin/sh

# v0.1
# This script will install all dependencies for the other scripts to run.
# At the moment this just includes: yay, git

yes | sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
yes | makepkg -si
cd .. && yes | rm -r yay

# Start independant scripts
./dwm
./st
