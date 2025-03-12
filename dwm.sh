# installing dmenu

yes | yay -S dmenu

# installing dwm

# dependencies and font
yes | libx11 libxft xorg-server xorg-xinit ttf-monaco-nerd-font-git
# cloning repo
git clone https://github.com/Lord3n20/dwm
# enter directory and reinstall with make
cd dwm
sudo make clean install
# copy .btndo.sh to ~ for button mappings to work.
cp .btndo.sh ~/.btndo.sh
# cleanup and end
cd ..
yes | rm -r dwm
echo "dwm and dmenu is now installed. You should add it to your .xinitrc"
[[ "$(
  read -e -p 'Continue? [y/N]> '
  echo $REPLY
)" == [Yy]* ]]
