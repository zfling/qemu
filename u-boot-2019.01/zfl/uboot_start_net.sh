#!/bin/bash

cd ../

if [ -f u-boot ] ; then
	echo "start from u-boot with net!!!"
	qemu-system-arm -M vexpress-a9 -nographic -kernel u-boot -m 512M -net nic,macaddr=52:54:00:11:22:33 -net tap,ifname=tap0,script=no,downscript=no
	# qemu-system-arm -M help
else
	echo "u-boot not exits !!!"
fi

