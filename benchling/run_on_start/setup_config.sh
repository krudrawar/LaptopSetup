#!/bin/bash
echo "copying ghstack config over"
cp ~/.config/.ghstackrc ~/

echo "setting git config editor to vim"
git config --global core.editor "vim"
echo "set git alias: fixup"
git config --global alias.fixup ""!git log origin/dev..HEAD --pretty=format:'%h %s' --no-merges | fzf | cut -c -7 | xargs -o git commit --fixup""

echo "Setting plugins in .zshrc"
sed -i -r 's/plugins\s?=\s?\(git\)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc

echo "[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases" >> ~/.zshrc

echo "export AWS_OKTA_MFA_PROVIDER=okta
export AWS_OKTA_MFA_FACTOR_TYPE=push" >> ~/.zshrc


echo "alias gb-recent=\"git for-each-ref --count=10 --sort=-committerdate refs/heads/ | cut -d ' ' -f 2 | cut -f2 -d$'\t' | cut -d '/' -f 3-\"
alias gbn='git symbolic-ref -q --short HEAD'
" >> ~/.zsh_aliases
