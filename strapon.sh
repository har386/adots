#!/bin/bash


sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S xorg xorg-drivers xorg-xinit xterm openbox firefox termite tmux vim fish noto-fonts compton ttf-hack termite-terminfo keepassxc htop tree arandr

mkdir ~/.config
mkdir ~/.config/fontconfig

cp -R /etc/xdg/openbox/ ~/.config/
cp -R /etc/xdg/termite/ ~/.config/

rm ~/.config/openbox/menu.xml 

ln -sv ~/adots/.gitconfig ~
ln -sv ~/adots/.xinitrc ~
ln -sv ~/adots/.tmux.conf ~
ln -sv ~/adots/.config/openbox/menu.xml ~/.config/openbox
ln -sv ~/adots/.config/fontconfig/fonts.conf ~/.config/fontconfig

