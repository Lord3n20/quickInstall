# download font and dependencies
yes | yay -S ttf-monaco-nerd-font-git libx11 libxft xorg-server xorg-xinit
# cloning repo
git clone https://github.com/Lord3n20/st
# enter directory and reinstall with make
cd st
sudo make clean install
# cleanup and end
cd ..
yes | rm -r st
echo "st is now installed."
[[ "$(
  read -e -p 'Continue? [y/N]> '
  echo $REPLY
)" == [Yy]* ]]
