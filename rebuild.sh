#!/bin/sh
cd ~/opt/v4l2loopback
git pull
make clean
make
sudo make install
sudo depmod -a
cd

