#!/bin/sh
# Pre arch-chroot script
# Requires mounted partition on /mnt

loadkeys cz-qwertz
setfont Lat2-Terminus16

tar xf Broadcom_Firmware.tar.gz -C /lib/firmware/
modprobe -r b43
modprobe b43
wifi-menu

nano /etc/pacman.d/mirrorlist

pacstrap /mnt base base-devel
arch-chroot /mnt pacman -S intel-ucode grub-bios
genfstab -p /mnt >> /mnt/etc/fstab
mkdir /mnt/home/files
cp * /mnt/home/files
chmod -R 777 /mnt/home/files
arch-chroot /mnt
# arch-chroot ./mnt/home/files/postchroot.sh ?