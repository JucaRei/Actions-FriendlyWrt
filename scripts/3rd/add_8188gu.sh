#!/bin/bash
set -eu
top_path=$(pwd)

# prepare toolchain and get the kernel version
export PATH=/opt/FriendlyARM/toolchain/11.3-aarch64/bin/:$PATH
pushd kernel
    kernel_ver=`make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 kernelrelease`
popd
modules_dir=$(readlink -f ./out/output_*_kmodules/lib/modules/${kernel_ver})
[ -d ${modules_dir} ] || {
	echo "please build kernel first."
	exit 1
}


# build kernel driver
git clone https://github.com/wandercn/RTL8188GU -b master
pushd RTL8188GU/8188gu-1.0.1
	chmod +x ARM_RPI.sh
	./ARM64.sh
	make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -C ${top_path}/kernel M=$(pwd)
	aarch64-linux-gnu-strip --strip-unneeded 8188gu.ko
	cp 8188gu.ko ${modules_dir}/
popd

# prepare rootfs overlay
tmp_dir="${top_path}/8188gu-files/etc/modules.d/"
mkdir ${tmp_dir} -p
echo "8188gu" > ${tmp_dir}/10-8188gu
echo "FRIENDLYWRT_FILES+=(8188gu-files)" >> .current_config.mk
