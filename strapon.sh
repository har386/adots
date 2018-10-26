#!/bin/bash

sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S xorg xorg-drivers xorg-xinit xterm openbox firefox tmux vim fish noto-fonts compton ttf-hack keepassxc htop tree arandr xfce4-terminal aria2 mpv lxappearance unzip rofi termite lightdm lightdm-gtk-greeter papirus-icon-theme nitrogen xfce4-power-manager

rm -rf ~/.config
mkdir ~/.config
mkdir ~/.config/fontconfig
mkdir ~/.config/openbox


ln -sv ~/adots/.gitconfig ~
ln -sv ~/adots/.gtkrc-2.0 ~
ln -sv ~/adots/.xinitrc ~
ln -sv ~/adots/.tmux.conf ~
ln -sv ~/adots/.config/compton.conf ~/.config
ln -sv ~/adots/.config/openbox/menu.xml ~/.config/openbox
ln -sv ~/adots/.config/openbox/rc.xml ~/.config/openbox
ln -sv ~/adots/.config/openbox/autostart ~/.config/openbox
ln -sv ~/adots/.config/fontconfig/fonts.conf ~/.config/fontconfig
ln -sv ~/adots/.config/xfce4/terminal/terminalrc ~/.config/xfce4/terminal

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg --noconfirm -si
cd ..
rm -rf yay

yay --noconfirm -S ttf-lato polybar ksuperkey

sudo systemctl stop systemd-journald-audit.socket && sudo systemctl mask systemd-journald-audit.socket
sudo systemctl enable lightdm 
