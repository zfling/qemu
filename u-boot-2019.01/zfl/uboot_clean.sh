#!/bin/bash


if [ -f u-boot.bin ] ; then
	rm -rf u-boot.bin
fi
echo "u-boot.bin deleted !!!"

cd ../

make distclean

echo "clean success !!!"
