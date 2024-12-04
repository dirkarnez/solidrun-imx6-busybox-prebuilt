#!/bin/bash

echo "User: $(whoami) UID: $(id -u) GID: $(id -g)"
gcc --version
# an echo that will stand out in the logs
function announce () {
    echo "##########################################################################################"
    echo "##############################  $*  #################################"
    echo "##########################################################################################"
}

set -e

# CC=arm-none-linux-gnueabihf-gcc
# make mrproper

export PATH="/opt/gcc-linaro-7.5.0-2019.12-i686_arm-linux-gnueabihf/bin:$PATH" && \
arm-linux-gnueabihf-gcc --version && \
cd /workspace && \
git clone --branch 1_34_0 https://git.busybox.net/busybox.git && \
cd ./busybox && \
export CROSS_COMPILE="arm-linux-gnueabihf-" && \
export ARCH="arm" && \
announce "Building busybox" && \
make help && \
make defconfig && \
sed -i 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' .config && \
cat .config && \
make CROSS_COMPILE="arm-linux-gnueabihf-" LDFLAGS="--static" && \
make CONFIG_PREFIX="$(pwd)/initramfs" install && \
announce "busybox build appears to have been successful"  && \
cd initramfs && \
mkdir -p bin sbin etc proc sys dev usr/bin usr/sbin && \
cp /workspace/init . && \
chmod +x init && \
ls -R && \
rm linuxrc && \
find . -print0 | cpio --null -ov --format=newc | gzip -9 > /dist/init.cpio && \
announce "cpio have been created successfully"
# && \
# announce "copying files" && \
# install -v -m644 -D ./arch/arm/boot/zImage /dist/zImage && \
# mkdir -p /dist/dts && \
# install -v -m644 -D ./arch/arm/boot/dts/*.dtb /dist/dts/ && \
# announce "files copied"

# for file in $(find source -type f -name *.py); do
#     install -m 644 -D ${file} dest/${file#source/}
# done

