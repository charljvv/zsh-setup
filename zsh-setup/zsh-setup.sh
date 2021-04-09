sudo apt-get update && sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
cp agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme
chsh -s /bin/zsh