#!/bin/sh
# Auto Setup script
# 2013/12/07

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

LOCATION= pwd

sudo add-apt-repository ppa:wiznote-team
sudo add-apt-repository ppa:xorg-edgers/ppa
sudo add-apt-repository ppa:fingerprint/fingerprint-gui
sudo add-apt-repository ppa:bumblebee/stable
sudo apt-get update
sudo apt-get install vim tmux git python-pip python-virtualenv zsh curl python-openssl unzip wiznote conky ibus-googlepinyin ibus-rime libbsapi policykit-1-fingerprint-gui fingerprint-gui xterm redshift libnss3-tools flashplugin-nonfree

cd ~
if [ -f .vim]
echo ".vim already existed"
then
mkdir .vim
fi
if [ -f workspace]
echo "workspace already existed"
then
mkdir workspace
fi
if [ -f repos]
echo "repos already existed"
then
mkdir repos
fi
sudo mkdir /usr/local/ca-certificates

cd ~/repos/dotfiles/
cp vimrc ~/.vimrc
cp vimrc.local ~/.vimrc.local
cp vimrc.bundles ~/.vimrc.bundles
cp Xresources ~/.Xresources
cp ./tmux.conf ~/.tmux.conf

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
#wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

#ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
#curl -L https://get.rvm.io | bash -s stable
#source ~/.rvm/scripts/rvm
#rvm install 2.0.0
#gem source -r https://rubygems.org/
#gem source -a http://ruby.taobao.org

gem install jekyll rdiscount gollum

sudo apt-get install nvidia-current nvidia-settings bumblebee primus bumblebee-nvidia steam-launcher primus-libs primus-libs-ia32 libglu1-mesa:i386
