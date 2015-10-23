#!/bin/bash

export NDK=/opt/android-ndk-r8b
export PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86
export CC=$PREBUILT/bin/arm-linux-androideabi-gcc
export LD=$PREBUILT/bin/arm-linux-androideabi-ld
export AS=$PREBUILT/bin/arm-linux-androideabi-gcc
export AR=$PREBUILT/bin/arm-linux-androideabi-ar
export RANLIB=$PREBUILT/bin/arm-linux-androideabi-ranlib
export STRIP=$PREBUILT/bin/arm-linux-androideabi-strip
export PLATFORM=$NDK/platforms/android-14/arch-arm 
export PREFIX=/home/minjie.yu/ffmpeg/x264/lib
export STRIP=$PREBUILT/bin/arm-linux-androideabi-strip
./configure --prefix=$PREFIX \
--enable-static \
--enable-pic \
--enable-strip \
--disable-cli \
--extra-cflags="-march=armv7-a -mfloat-abi=softfp -mfpu=neon -D__ARM_ARCH_7__ -D__ARM_ARCH_7A__" \
--host=arm-linux \
--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
--sysroot=$PLATFORM



