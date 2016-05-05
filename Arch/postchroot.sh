#!/bin/sh
# Post arch-chroot script
echo arch > /etc/hostname
ln -s /usr/share/zoneinfo/Europe/Prague /etc/localtime
hwclock --systohc --utc
nano /etc/vconsole.conf
nano /etc/locale.gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf
export LANG=en_US.UTF-8
locale-gen
mkinitcpio -p linux
grub-mkconfig -o /boot/grub/grub.cfg
nano /boot/grub/grub.cfg
mkdir /boot/grub/locale
cp /usr/share/locale/en\@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
grub-install --recheck /dev/sda
passwd root
useradd -m -g users -G wheel -s /bin/bash drstiny
passwd drstiny
visudo
pacman -S xorg-server xorg-xinit xorg-server-utils mesa nvidia-340xx xf86-input-synaptics alsa-utils alsa-plugins pulseaudio-alsa networkmanager network-manager-applet wireless_tools wpa_supplicant b43-fwcutter i3 dmenu rxvt-unicode slim archlinux-themes-slim
pacman -U b43-firmware-*
nano /etc/slim.conf
cp /etc/X11/xinit/xinitrc /home/drstiny/.xinitrc
chmod +x /home/drstiny/.xinitrc
chown drstiny:users /home/drstiny/.xinitrc
nano /home/drstiny/.xinitrc
nano /usr/share/X11/xorg.conf.d/10-evdev.conf
systemctl enable slim NetworkManager fstrim.timer
echo "That's it! Now exit; umount -R /mnt; reboot and gl!"