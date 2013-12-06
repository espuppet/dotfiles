#!/bin/bash

# 驱动相关
pacman -Rsc xf86-video-ati xf86-video-nouveau xf86-video-intel intel-dri ati-dri glamor-egl virtualbox-guest-modules nvidia-utils
pacman -S nvidia bumblebee intel-dri bbswitch lib32-libtxc_dxtn lib32-nvidia-util xf86-video-intel
usermod -a -G bumblebee espuppet
systemctl enable bumblebeed.service

#字体文档相关
pacman -S wqy-microhei wget ibus-rime ttf-dejavu wine-mono
pacman -S xmind

#编程相关
pacman -S gvim git tmux zsh vim-systemd
git clone https://github.com/espuppet/dotfiles
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

#壁纸及网络相关
pacman -S feh goagent flashplugin thunderbird

#AUR
yaourt kingsoft-office ttf-microsoft-arial ttf-microsoft-yahei
yaourt lovewallpaper-hd xflux
