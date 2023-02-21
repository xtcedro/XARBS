#!/bin/bash

set -e
echo "WELCOME TO THE AGE OF CREATION"


sudo timedatectl set-timezone America/Chicago
sudo timedatectl set-ntp true

sudo apt update -yyq && sudo apt dist-upgrade -yyq && sudo apt full-upgrade -yyq && sudo apt autoremove -yyq




sudo apt install gcc make build-essential suckless-tools libxft-dev libxfont-dev x11-utils libx11-xcb-dev libxinerama-dev xfce4-terminal qterminal lxterminal soundmodem xorg xinit vlc smplayer feh fzf neovim vim git wget curl unattended-upgrades calendar calcurse dunst unclutter xclip xdot xdotool nnn chromium-browser libxrandr-dev zathura sxiv lynx libharfbuzz-dev libxcb-res0-dev libnotificationmanager1 libnotify4 python3.9-full openssh-server zsh dash sonic-pi lfm arch-install-scripts file locate gparted mtools nmap filezilla transmission groff grok mpv neofetch newsboat neomutt zathura-pdf-poppler zathura-dev libncurses5-dev npm ranger xscreensaver xscreensaver-data xscreensaver-data-extra xscreensaver-gl xscreensaver-gl-extra xscreensaver-screensaver-bsod xscreensaver-screensaver-dizzy xscreensaver-screensaver-webcollage unzip bsdutils bsdextrautils rsync cron pipenv pipewire ncmpcpp stardict-english-czech webkit2gtk-driver debootstrap initscripts initramfs-tools initramfs-tools-core hugo libbctoolbox-dev php pgpgpg traceroute websploit awscli busybox wget2 wget2-dev geany imagemagick gnumeric manpages-posix manpages-posix-dev nmap-common isync xcape xwallpaper ufw fail2ban picom xcompmgr -yyq

cd
pushd /tmp/ && git clone https://github.com/Lukesmithxyz/voidrice
cp -r voidrice/.local/* ~/.local
cp -r voidrice/.config/ ~/.config
nvim ~/.config/nvim/init.vim
rm -rf /tmp/voidrice
popd
sudo nvim /etc/ssh/sshd_config
mkdir -p ~/AGE_OF_CREATION/{binary_files,ascii_files}
mkdir -p ~/AGE_OF_CREATION/ascii_files/{sourcecode,templates,projects}
mkdir -p ~/AGE_OF_CREATION/binary_files/{audio,video,images,fonts,compressed,pdf,executables}

exit
