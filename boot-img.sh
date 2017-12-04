#!/bin/sh
qemu-system-x86_64 -kernel \
/home/smart/Projects/LinuxKernel.org/linux/arch/x86_64/boot/bzImage -append \
"console=ttyS0 root=/dev/sda" -drive format=raw,file=qemu-image.img \
--enable-kvm --nographic -m 1024