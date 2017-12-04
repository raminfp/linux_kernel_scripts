#!/bin/sh

IMG=qemu-image.img
DIR=mount-point
qemu-img create $IMG 1g
mkfs.ext2 $IMG
mkdir $DIR
sudo mount -o loop $IMG $DIR
sudo debootstrap --arch amd64 jessie $DIR
sudo tar cvf rootfs-nfs.tar -C $DIR .
sudo umount $DIR
rm $DIR