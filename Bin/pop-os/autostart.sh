#!/bin/sh

# running fix for amd/nvidia hybrid laptops
$HOME/Bin/pop-os/amd-fix.sh
# lower the tdp of my laptop
$HOME/Bin/amd-ryzen/ryzenadj_normal
# making my cpu governor schedutil since it is much better on performance and battery life
sudo /usr/bin/cpupower frequency-set -g schedutil > /dev/null
