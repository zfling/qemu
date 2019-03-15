#!/bin/bash


if [ -f u-boot.bin ] ; then
	rm -rf u-boot.bin
fi

echo "u-boot.bin deleted !!!"

cd ../

if [ -f u-boot.bin ] ; then
	make distclean
fi

echo "clean success !!!"
