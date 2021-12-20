#!/bin/bash
git clone --depth 1 https://github.com/raspberrypi/linux

mkdir kernel-out

(cd /linux && make O=../kernel-out/ ARCH=arm64 \
	CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig)

(cd /linux && make -j4 O=../kernel-out/ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-)

