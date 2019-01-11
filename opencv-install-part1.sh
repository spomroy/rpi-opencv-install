#!/bin/bash

# Update software package listing
apt-get -y update

# Upgrade existing software packages
apt-get -y upgrade

# Install required developer tools
apt-get -y install build-essential cmake unzip pkg-config

# Install required image & video libraries
apt-get -y install libjpeg-dev libpng-dev libtiff-dev
apt-get -y iinstall libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
apt-get -y iinstall libxvidcore-dev libx264-dev

# Install GTK (GIMP Toolkit) for GUI development
apt-get -y iinstall libgtk-3-dev libcanberra-gtk*

# Install numerical optimizations for OpenCV
apt-get -y install libatlas-base-dev gfortran

# Install Python3 development libraries
apt-get -y install python3-dev

# Install pip & virtual environment tools
wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
pip install virtualenv virtualenvwrapper
rm -rf ~/get-pip.py ~/.cache/pip
