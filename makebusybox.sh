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
git clone --branch 1_37_0 https://git.busybox.net/busybox.git && \
cd ./busybox && \
export CROSS_COMPILE="arm-linux-gnueabihf-" && \
export ARCH="arm" && \
announce "Building busybox" && \
STATIC
make help && \
make defconfig && \
echo "CONFIG_STATIC=y" >> .config && \
make CROSS_COMPILE="arm-linux-gnueabihf-" LDFLAGS="--static" && \
make install && \
announce "busybox build appears to have been successful"  && \
ls -R

# && \
# announce "copying files" && \
# install -v -m644 -D ./arch/arm/boot/zImage /dist/zImage && \
# mkdir -p /dist/dts && \
# install -v -m644 -D ./arch/arm/boot/dts/*.dtb /dist/dts/ && \
# announce "files copied"

# for file in $(find source -type f -name *.py); do
#     install -m 644 -D ${file} dest/${file#source/}
# done

