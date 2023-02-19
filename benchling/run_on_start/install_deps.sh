#!/bin/bash

echo "installing ghstack..."
pip install ghstack

echo "installing tmux and ripgrep..."
sudo apt-get update
yes | sudo apt-get install tmux ripgrep

echo "installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

echo "installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo "installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

echo "installing z"
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
echo ". ~/z.sh" >> ~/.zshrc
