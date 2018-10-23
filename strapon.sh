#!/bin/bash

sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S xorg xorg-drivers xorg-xinit xterm openbox firefox termite tmux vim fish noto-fonts compton ttf-hack termite-terminfo keepassxc htop

mkdir ~/.config
