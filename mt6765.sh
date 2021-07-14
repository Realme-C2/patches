#!/bin/bash

# realme c2 autopatcher by sparxfusion

ROOTDIR=$(realpath .)
pfwb() {
    cd frameworks/base && wget https://github.com/PixelExperience/frameworks_base/commit/37f5a323245b0fd6269752742a2eb7aa3cae24a7.patch && git apply 37f5a323245b0fd6269752742a2eb7aa3cae24a7.patch
}

pims() {
    cd frameworks/opt/net/ims && wget https://github.com/PixelExperience/frameworks_opt_net_ims/commit/661ae9749b5ea7959aa913f2264dc5e170c63a0a.patch && git apply 661ae9749b5ea7959aa913f2264dc5e170c63a0a.patch
}

pwifi() {
    cd frameworks/opt/net/wifi && wget https://github.com/PixelExperience/frameworks_opt_net_wifi/commit/3bd2c14fbda9c079a4dc39ff4601ba54da589609.patch && git apply 3bd2c14fbda9c079a4dc39ff4601ba54da589609.patch
}

pboot() {
    cd external/selinux && wget https://github.com/PixelExperience/external_selinux/commit/9d6ebe89430ffe0aeeb156f572b2a810f9dc98cc.patch && git apply 9d6ebe89430ffe0aeeb156f572b2a810f9dc98cc.patch
}

cd $ROOTDIR 
pfwb
cd $ROOTDIR 
pims 
cd $ROOTDIR 
pwifi 
cd $ROOTDIR 
pboot 
cd $ROOTDIR

echo "patch done !"
