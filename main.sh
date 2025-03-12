#!/bin/sh

# v0.1
# This script will install all dependencies for the other scripts to run.
# At the moment this just includes: yay, git

#yes | sudo pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si
#cd .. && yes | rm -r yay

# Make independant scripts executable
chmod +x st.sh dwm.sh dotfiles
# Start independant scripts
[[ "$(
  read -e -p 'Continue with st? [y/N]> '
  echo $REPLY
)" == [Yy]* ]] && ./st.sh
[[ "$(
  read -e -p 'Continue with dwm? [y/N]> '
  echo $REPLY
)" == [Yy]* ]] && ./dwm.sh
[[ "$(
  read -e -p 'Continue with dotfiles? [y/N]> '
  echo $REPLY
)" == [Yy]* ]] && ./dotfiles.sh
