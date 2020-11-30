#!/bin/bash
#######################################
#
# Update and Reboot by Babis.M ubuntu
#
#######################################
sudo apt-get -y update &&
sudo apt-get -y upgrade &&
sudo apt-get -y dist-upgrade &&
sudo apt-get -y autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y update &&
echo NEUSTART - @Server neustart &&
sudo reboot