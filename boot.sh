#!/bin/bash

QVER=v2.12.0
KVER=v5.1
RVER=2016.05

./qemu/$QVER/bin/qemu-system-arm -M vexpress-a9 -m 128M -smp 1 -no-reboot -nographic \
	-dtb kernel/$KVER/vexpress-v2p-ca9.dtb \
	-kernel kernel/$KVER/zImage \
	-initrd root/$RVER/rootfs.cpio.gz \
	-append 'route=172.17.0.5 root=/dev/ram0  console=ttyAMA0'  \
	#-net nic,model=lan9118 -net tap

