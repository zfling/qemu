#!/bin/bash

cd ../

if [ -f u-boot ] ; then
	echo "start from u-boot!!!"
	qemu-system-arm -M vexpress-a9 -kernel /home/zfl/qemu/qemu310/uboot/u-boot -nographic -m 512M
	# qemu-system-arm -M help
else
	echo "u-boot not exits !!!"
fi

