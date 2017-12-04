#!/bin/sh
qemu-system-x86_64 -kernel \
/home/smart/Projects/LinuxKernel.org/linux/arch/x86_64/boot/bzImage -append \
"console=ttyS0 root=/dev/nfs nfsroot=10.0.2.2:/home/smart/Projects/qemu-for-x86/rootfs-nfs/ ip=dhcp rw" \
--enable-kvm --nographic -m 1024