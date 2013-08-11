#!/bin/sh
# Auto Setup script 
# 2013/08/05

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

LOCATION= pwd

if [ -s /etc/apt/sources.list ]
then
sudo mv /etc/apt/sources.list /etc/apt/source.list.bak
fi
sudo cp ./sources.list /etc/apt/

sudo apt-get update
sudo apt-get -y install vim tmux git python-pip python-virtualenv zsh curl python-openssl unzip

cd ~
mkdir .vim
mkdir Download workspace virtualenv github.com
cp -R goagent ~/Downloads/
cd ~/workspace
mkdir dotfiles
cd ~/workspace/dotfiles
git init
git remote add origin /src/dotfiles/
git pull origin master:master

cp .vimrc ~
cp .tmux.conf ~
cp bundles.vim ~/.vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

#cd ~/github.com/
#git clone http://github.com/goagent/goagent
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

if [ -s ~/.pip ]
then
    mkdir ~/.pip/
fi

if [ -s ~/.pip/pip.conf ]
then
sudo mv ~/.pip/pip.conf ~/.pip/pip.conf.bak
fi
cd $LOCATION
cp pip.conf ~/.pip/

sudo pip install pythonbrew
cd ~/virtualenv
#virtualenv pelican
#source ~/virtualenv/pelican/bin/activate
#pip install Markdown
#pip install pelican

sudo apt-get install -y build-essential openssl curl libcurl3-dev libreadline6 libreadline6-dev git zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf automake libtool imagemagick libmagickwand-dev libpcre3-dev libsqlite3-dev libmysql-ruby libmysqlclient-dev

curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

# 替换 Ruby 下载地址到国内淘宝镜像服务器
# for Linux
sed -i 's!ftp.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db
# 安装 readline 包
rvm pkg install readline
# 安装 Ruby 2.0.0
rvm install 2.0.0 --with-readline-dir=$rvm_path/usr

rvm 2.0.0 --default


gem source -r https://rubygems.org/
gem source -a http://ruby.taobao.org
