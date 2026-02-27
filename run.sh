./config_locale.sh
./config_git.sh
# ./install_dependencies.sh
# default shell to zsh
chsh -s `which zsh`
# copy .zshrc and omz theme
cp ./.zshrc $HOME/.zshrc
cp ./ukgu.zsh-theme $HOME/.oh-my-zsh/themes
# copy imcat
cp ./imcat $HOME/imcat
# copy rsyncp
cp ./rsyncp $HOME/rsyncp
# copy yazi config
cp ./yazi/* $HOME/.config/yazi/
# start zsh
zsh
source $HOME/.zshrc