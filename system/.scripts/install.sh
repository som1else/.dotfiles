#!/usr/bin/env bash

# Update System
apt-get update
apt-get upgrade

# Install
apt-get install zsh \
	stow \
    	zsh \
	powerline \
	fonts-powerline

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

chsh -s /bin/zsh

cd .oh-my-zsh
upgrade_oh_my_zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install
