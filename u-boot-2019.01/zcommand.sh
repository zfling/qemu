#!/bin/bash

cd ./zfl

if [ -z $1 ] ; then
	echo "Wrong Parameter !!!"
	echo "--- 1 uboot make config and make ---"
	echo "--- 2 make distclean ---"
	echo "--- 3 烧写bin到SD卡 ---"
	exit 0
fi

if [ $1 -gt 3 ] ; then
	echo "Wrong Parameter !!!"
	echo "--- 1 uboot make config and make---"
	echo "--- 2 make distclean ---"
	echo "--- 3 烧写bin到SD卡 ---"
	exit 0
fi

if [ $1 -eq 1 ] ; then
	echo "--- make config and make ---> "
	./build_all.sh
	exit 0
fi

if [ $1 -eq 2 ] ; then
	echo "--- make distclean ---> "
	./clean.sh
	exit 0
fi

if [ $1 -eq 3 ] ; then
	echo "--- 烧写bin到SD卡 ---> "
	sudo ./mkuboot.sh
	exit 0
fi

