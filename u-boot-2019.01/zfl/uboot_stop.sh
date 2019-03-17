#!/bin/bash

cd ../
if [ -f u-boot ] ; then
	echo "stop from u-boot!!!"
	ps -A | grep qemu-system-arm
	echo “$USER”
	if [ $? -eq 0 ] ; then
		ps -A | grep qemu-system-arm | awk '{print $1}' | xargs sudo kill -9
		# qemu-system-arm -M help
	else
		echo "Please Start Uboot !!!"
	fi
	
else
	echo "u-boot not exits !!!"
fi

