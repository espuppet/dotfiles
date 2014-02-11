#!/bin/bash

# 驱动相关
pacman -Rsc xf86-video-ati xf86-video-nouveau xf86-video-intel intel-dri ati-dri glamor-egl virtualbox-guest-modules nvidia-utils
pacman -S nvidia bumblebee intel-dri bbswitch lib32-libtxc_dxtn lib32-nvidia-utils xf86-video-intel
usermod -a -G bumblebee espuppet
systemctl enable bumblebeed.service

#字体文档相关
pacman -S wqy-microhei wget ibus-rime ttf-dejavu wine-mono fcitx-im fcitx-configtool
pacman -S xmind zathura

#编程相关
pacman -S gvim git tmux zsh vim-systemd cscope ctags
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

#多媒体，壁纸及网络相关
pacman -S feh flashplugin thunderbird deadbeef libmad flac mplayer shadowsocks python3-gevent python2-setuptools
pacman -S goagent

#AUR
pacman -S base-devel fakeroot libtinfo
yaourt -S keepassx2
yaourt -S kingsoft-office ttf-microsoft-arial ttf-microsoft-yahei
yaourt -S lovewallpaper-hd xflux
