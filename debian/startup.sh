#!/bin/sh
# Auto Setup script
# 2013/09/05

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

LOCATION=$(pwd)

#if [ -s /etc/apt/sources.list ]
#then
#mv /etc/apt/sources.list /etc/apt/sources.list.bak
#fi
#cp ./sources.list /etc/apt/
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 3EE67F3D0FF405B2
#fingerprint
#apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2F20733F
#sudo add-apt-repository ppa:fingerprint/fingerprint-gui

sudo apt-get update
sudo apt-get -y install vim tmux git python-pip python-virtualenv zsh curl python-openssl unzip xterm firmware-iwlwifi firmware-realtek ttf-wqy-microhei ttf-dejavu openbox tint2 conky fcitx fcitx-pinyin fcitx-googlepinyin feh xcompmgr gdebi gnome-tweak-tool redshift flashplugin-nonfree libnss3-tools cmake build-essential mono-devel gparted ctags cscope

# nvidia drivers & bumblebee
sudo aptitude -r install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') nvidia-kernel-dkms
sudo apt-get install -y bumblebee-nvidia primus
sudo usermod -a -G bumblebee $USER

cd ~
mkdir Downloads workspace
cd $LOCATION
cd ..
cp ./vimrc ~/.vimrc
cp ./vimrc.local ~/.vimrc.local
cp ./vimrc.bundles ~/.vimrc.bundles
cp ./tmux.conf ~/.tmux.conf
cp ./Xresources ~/.Xresources
cp ./conkyrc ~/.conkyrc
cp ./redshift.conf ~/.config/

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

sudo dpkg --add-architecture i386
sudo apt-get install -y libgl1-nvidia-glx:i386 jockey-common
sudo apt-get install -y firefox thunderbird

#cd ~/Download/
#wget -c https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
#sudo python2.7 ez_setup.py
#cd $LOCATION
#tar zxvf pip-1.4.tar.gz
#cd pip-1.4
#sudo python2.7 setup.py install

#cd $LOCATION
#tar xvfz virtualenv-1.10.tar.gz
#cd virtualenv-1.10
#sudo python2.7 setup.py install

#if [ -s ~/.pip ]
#then
#    mkdir ~/.pip/
#fi
#
#if [ -s ~/.pip/pip.conf ]
#then
#sudo mv ~/.pip/pip.conf ~/.pip/pip.conf.bak
#fi
#cd $LOCATION
#cp pip.conf ~/.pip/
#
#sudo pip install pythonbrew
#cd ~/virtualenv
#virtualenv pelican
#source ~/virtualenv/pelican/bin/activate
#pip install Markdown
#pip install pelican

# Ruby
#sudo apt-get install -y build-essential openssl curl libcurl3-dev libreadline6 libreadline6-dev git zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf automake libtool imagemagick libmagickwand-dev libpcre3-dev libsqlite3-dev libmysql-ruby libmysqlclient-dev

#curl -L https://get.rvm.io | bash -s stable

#source ~/.rvm/scripts/rvm

# 替换 Ruby 下载地址到国内淘宝镜像服务器
# for Linux
#sed -i 's!ftp.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db
# 安装 readline 包
#rvm pkg install readline
# 安装 Ruby 1.9.3
#rvm install 1.9.3 --with-readline-dir=$rvm_path/usr

#rvm 1.9.3 --default


#gem source -r https://rubygems.org/
#gem source -a http://ruby.taobao.org
