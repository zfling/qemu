#!/bin/bash

cd ../


make ARCH=arm vexpress_ca9x4_defconfig
echo "make vexpress_ca9x4_defconfig !"

make ARCH=arm V=1 ZFL=1
echo "make completed !"

cp u-boot.bin ./zfl/
echo "copy u-boot.bin done."

echo "build success !!!"
