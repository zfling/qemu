#!/bin/bash

cd ../

make ARCH=arm
echo "make completed !"

cp u-boot.bin ./zfl/
echo "copy u-boot.bin done."

echo "build success !!!"
