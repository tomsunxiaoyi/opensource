#!/bin/sh

###
CROSS=
CC=$(CROSS)gcc
CPP=$(CROSS)g++
CXX=$(CROSS)g++
LD=$(CROSS)ld
AR=$(CROSS)ar
RANLIB=$(CROSS)ranlib
STRIP=$(CROSS)strip
OUPUT_DIR=${1}-x86

#export CC
#export CPP
#export CXX
#export LD
#export AR
#export RANLIB
#export STRIP

CUR_DIR=${PWD}
echo $CUR_DIR
SOURCE_DIR=${CUR_DIR}/${1}
TARGET_DIR=${CUR_DIR}/out/$OUPUT_DIR

clear
cd $SOURCE_DIR/

#./configure --prefix=$TARGET_DIR
#--enable-static --disable-asm


make clean
make
#make install


