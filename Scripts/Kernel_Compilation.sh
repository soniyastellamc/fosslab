
#!/bin/bash

wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.16.tar.xz

#Untarring source Kernel file for Compilation
tar xvJf linux-4.16.tar.xz
sudo apt-get install libncurses5-dev libncursesw5-dev
cd linux-4.16/
sudo make menuconfig

#Compiling Min Kernel
make 

#Kernel Modules Compilation
make modules

#Kernel Modules Installation
sudo make modules_install

#New Kernel Installation
sudo make install
