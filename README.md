solidrun-imx6-busybox-prebuilt
==============================
- https://github.com/docker-library/busybox/blob/master/.patches/sha1_process_block64_shaNI.patch

### Very good tutorials that might help (Google search: `busybox "ttymxc0"`)
- [【Linux】基于busybox移植rootfs根文件系统_busybox-1.35.0.tar.bz2 下载-CSDN博客](https://blog.csdn.net/ZHONGCAI0901/article/details/122533071)
- [Linux·busybox编译和移植，生成最简根文件系统_busybox移植-CSDN博客](https://blog.csdn.net/m0_64560763/article/details/126309501?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7EOPENSEARCH%7EPaidSort-1-126309501-blog-122533071.235%5Ev43%5Epc_blog_bottom_relevance_base3&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7EOPENSEARCH%7EPaidSort-1-126309501-blog-122533071.235%5Ev43%5Epc_blog_bottom_relevance_base3&utm_relevant_index=1)

### TODO
- `/dev/ttymxc0 initramfs`, `ttymxc0::respawn:/sbin/getty`
  - `BR2_TARGET_GENERIC_GETTY_PORT` in buildroot
  - GitHub Search
  - [linusw/rootfs-build: RootFS generation script to build cpio initramfs for Linux embedded targets](https://github.com/linusw/rootfs-build)
    - /etc/inittab-*
- splash screen
  - [linusw/rootfs-build: RootFS generation script to build cpio initramfs for Linux embedded targets](https://github.com/linusw/rootfs-build)
    - /etc/init.d/splash
    - /etc/splash-*
- /etc/fstab
  - [Linux busybox mount -a fstab - zengjf - 博客园](https://www.cnblogs.com/zengjfgit/p/5134290.html)
  - [Linux 再入门整理：详解 /etc/fstab 文件_linux fstab-CSDN博客](https://blog.csdn.net/peng2hui1314/article/details/142675349)
### Tutorials
- [**mini-distribution/hummingboard: The Hummingboard Mini Distribution**](https://github.com/mini-distribution/hummingboard)
- [[Buildroot] [PATCH 1/1] Solid-Run HummingBoard i2eX defconfig and bootable microSD Bash script - Jonathan Ben-Avraham](https://lore.kernel.org/buildroot/1432820170-10513-1-git-send-email-yba@tkos.co.il/#Z31configs:hummingboard_i2eX_defconfig)
- [**Build a kernel, initramfs and Busybox to create your own micro-Linux | cylab.be**](https://cylab.be/blog/320/build-a-kernel-initramfs-and-busybox-to-create-your-own-micro-linux)
- [busybox添加wireless tool工具_busybox ethtool-CSDN博客](https://blog.csdn.net/Cupid99/article/details/70168053)
- [busybox添加wireless tool工具iwlist iwconfig (TODO)_busybox iwconfig-CSDN博客](https://blog.csdn.net/kangear/article/details/80219478)
- [Initramfs/指南 - Gentoo wiki](https://wiki.gentoo.org/wiki/Initramfs/Guide/zh-cn)
- [vita | 《深度探索Linux操作系统 : 系统构建和原理解析》 学习笔记](https://yifengyou.github.io/vita/docs/%E6%9E%84%E5%BB%BAinitramfs/initramfs%E5%8E%9F%E7%90%86%E6%8E%A2%E8%AE%A8.html)
- [initramfs 在内核中的作用与实现-CSDN博客](https://blog.csdn.net/song_lee/article/details/106027410)
- [cpio解压initramfs.img - 宅女士 - 博客园](https://www.cnblogs.com/carriezhangyan/p/9407567.html)
- [initramfs.img.gz根文件的修改和重新打包@[initramfs, Kernel, Centos7, Linux]_img.gz转img-CSDN博客](https://blog.csdn.net/nethlon/article/details/115328012)
- [initramfs](https://xstarcd.github.io/wiki/Linux/initramfs.html)
- [About initramfs](https://www.linuxfromscratch.org/blfs/view/svn/postlfs/initramfs.html)
- [Initramfs 原理和实践 - wipan - 博客园](https://www.cnblogs.com/wipan/p/9269505.html)
- [在qemu上运行BusyBox - wipan - 博客园](https://www.cnblogs.com/wipan/p/9272255.html)
- [**initramfs 在内核中的作用与实现-CSDN博客**](https://blog.csdn.net/song_lee/article/details/106027410)
- [**用busybox制作initramfs并启动 | CS笔记**](https://cs.pynote.net/sf/linux/sys/202111123/#busybox_1)
- [camerasrnd/busybox/build.md at d6007c45963999e4fc9237ba641d41d626d39309 · OpenIPC/camerasrnd](https://github.com/OpenIPC/camerasrnd/blob/d6007c45963999e4fc9237ba641d41d626d39309/busybox/build.md?plain=1#L26)
- [bilibili/scripts/qemu-busybox.sh at 960f10a81ca099c6271474b3c01237881828ea84 · LeisureLinux/bilibili](https://github.com/LeisureLinux/bilibili/blob/960f10a81ca099c6271474b3c01237881828ea84/scripts/qemu-busybox.sh#L246)
- inittab
  - [inittab脚本启动解析_inittab respawn-CSDN博客](https://blog.csdn.net/hbcbgcx/article/details/94404346)
  - [inittab 檔案 - IBM 說明文件](https://www.ibm.com/docs/zh-tw/aix/7.3?topic=files-inittab-file)
  - [inittab 分析 - SuperTao1024 - 博客园](https://www.cnblogs.com/helloworldtoyou/p/6159913.html)
  - [Linux根文件系统：/etc/inittab文件分析 - LinFeng-Learning - 博客园](https://www.cnblogs.com/linfeng-learning/p/9285543.html)
  - [**Linux System : Managing Linux Services - initramfs · Issue #173 · carloscn/blog**](https://github.com/carloscn/blog/issues/173)
    - [genkernel - Gentoo wiki](https://wiki.gentoo.org/wiki/Genkernel#Initramfs_kernel_command-line_parameters)
    - [Dracut - Gentoo wiki](https://wiki.gentoo.org/wiki/Dracut)

### Reference
- [./reference/debian-installer-init](./reference/debian-installer-init)
  - from https://solid-run-images.sos-de-fra-1.exo.io/Pure-Debian/armhf/12/2024-11-18_1ba322c/debian-12.8.0-armhf-netinst.img
  - https://ftp.debian.org/debian/dists/bookworm/main/installer-armhf/20230607+deb12u8/images/hd-media/initrd.gz
