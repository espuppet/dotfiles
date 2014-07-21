#!/bin/bash
#
# Auto startup for ubuntu under vagrant
#
# author: espuppet
#
# date: 2014/07/20

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

LOCATION=$(pwd)

cat /etc/apt/sources.list | grep ustc
if $?
then
mv /etc/apt/sources.list /etc/apt/sources.list.bak
fi
cp /vagrant_data/sources.list /etc/apt/

sudo apt-get update

sudo apt-get -y install vim tmux git zsh curl cmake build-essential ctags cscope nodejs

cp ./vimrc ~/.vimrc
cp ./vimrc.local ~/.vimrc.local
cp ./vimrc.bundles ~/.vimrc.bundles
cp ./tmux.conf ~/.tmux.conf

# install Vundle & Oh-My-Zsh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -L http://install.ohmyz.sh | sh

# install Ruby
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.0.0
rvm use 2.0.0 --default

sources --remove http://rubygems.org/
sources -a http://ruby.taobao.org/
