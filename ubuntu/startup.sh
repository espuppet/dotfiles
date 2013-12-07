#!/bin/sh
# Auto Setup script
# 2013/12/07

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

LOCATION= pwd

sudo apt-get update
sudo apt-get -y install vim tmux git python-pip python-virtualenv zsh curl python-openssl unzip

cd ~
mkdir .vim
mkdir workspace repos
cd ~/repos/
git clone git@github.com:espuppet/dotfiles.git
cd dotfiles
cp ./vim/vimrc ~/.vimrc
cp ./tmux.conf ~/.tmux.conf
cp ./vim/bundles.vim ~/.vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
