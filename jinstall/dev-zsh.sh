#!/bin/bash
trap "echo 'Stop Shell'; exit 130" INT


echo
echo '# check'
echo
echo $SHELL
zsh --version

echo
echo '# install'
echo
sudo apt install -y zsh && nl /etc/shells
curl -L http://install.ohmyz.sh | sh

echo
echo '# install zsh-autosuggestions extend, 輸入命令時, 會提示上一次輸入時的文字'
echo
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo '----------------------------------------'
echo '# 改變你的 shell'
echo 'chsh -s /bin/zsh'
echo
echo '# config'
echo 'vi ~/.zshrc'
echo
echo '    plugins=(git node npm composer github tmux zsh-autosuggestions z)'
echo
