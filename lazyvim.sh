# download dependencies
yes | yay -S nvim zathura
# cloning repo
cd ~/.config/nvim
git clone https://github.com/Lord3n20/LazyVim
# copy latexmk config
cp .latexmkrc ~/.latexmkrc
echo "Lazyvim is now installed."
[[ "$(
  read -e -p 'Continue? [y/N]> '
  echo $REPLY
)" == [Yy]* ]]
