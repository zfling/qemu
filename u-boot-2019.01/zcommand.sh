#!/bin/bash

cd ./zfl

function warning_print () {  
    echo "Wrong Parameter !!!"
	echo "--- 1 uboot make config and make ---"
	echo "--- 2 uboot make distclean ---"
	echo "--- 3 uboot make ---"
	echo "--- 4 uboot start ---"
	echo "--- 5 uboot stop ---"
	echo "--- 6 uboot start debug ---"
	echo "--- 7 uboot make for debug -o0 ---"
	
	exit 0 
} 

if [ -z $1 ] ; then
	warning_print
fi

if [ $1 -gt 7 ] ; then
	warning_print
fi

if [ $1 -eq 1 ] ; then
	echo "--- uboot make config and make ---> "
	./uboot_build_all.sh
	exit 0
fi

if [ $1 -eq 2 ] ; then
	echo "--- uboot make distclean ---> "
	./uboot_clean.sh
	exit 0
fi

if [ $1 -eq 3 ] ; then
	echo "--- uboot make ---> "
	./uboot_build.sh
	exit 0
fi

if [ $1 -eq 4 ] ; then
	echo "--- uboot start ---> "
	./uboot_start.sh
	exit 0
fi

if [ $1 -eq 5 ] ; then
	echo "--- uboot stop ---> "
	./uboot_stop.sh
	exit 0
fi

if [ $1 -eq 6 ] ; then
	echo "--- uboot start debug ---> "
	./uboot_start_debug.sh
	exit 0
fi

if [ $1 -eq 7 ] ; then
	echo "--- uboot make for debug -o0 ---> "
	./uboot_make_debug.sh
	exit 0
fi