#!/bin/bash


sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S xorg xorg-drivers xorg-xinit xterm openbox firefox tmux vim fish noto-fonts compton ttf-hack keepassxc htop tree arandr xfce4-terminal 

mkdir ~/.config
mkdir ~/.config/fontconfig

cp -R /etc/xdg/openbox/ ~/.config/
#cp -R /etc/xdg/termite/ ~/.config/

rm ~/.config/openbox/menu.xml 
rm ~/.config/openbox/autostart 

ln -sv ~/adots/.gitconfig ~
ln -sv ~/adots/.xinitrc ~
ln -sv ~/adots/.tmux.conf ~
ln -sv ~/adots/.config/compton.conf ~/.config
ln -sv ~/adots/.config/openbox/menu.xml ~/.config/openbox
ln -sv ~/adots/.config/openbox/autostart ~/.config/openbox
ln -sv ~/adots/.config/fontconfig/fonts.conf ~/.config/fontconfig

