#!/bin/bash

cd ../

if [ -f u-boot ] ; then
	echo "start debug from u-boot!!!"
	qemu-system-arm -M vexpress-a9 -m 512M -nographic -kernel u-boot -gdb tcp::1234  -S
	# qemu-system-arm -M help
else
	echo "u-boot not exits !!!"
fi

