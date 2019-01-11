#!/bin/bash

# Download OpenCV souce and unzip it
wget -O ~/opencvsrc.zip https://github.com/opencv/opencv/archive/4.0.1.zip
wget -O ~/opencv_contribsrc.zip https://github.com/opencv/opencv_contrib/archive/4.0.1.zip

unzip -d ~/ ~/opencvsrc.zip
unzip -d ~/ ~/opencv_contribsrc.zip

rm ~/opencvsrc.zip
rm ~/opencv_contribsrc.zip

mv ~/opencv-4.0.1 ~/opencv
mv ~/opencv_contrib-4.0.1 ~/opencv_contrib

echo "\n# virtualenv and virtualenvwrapper" >> ~/.profile
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile

# Doesn't seem to be working at the moment
cd
source ~/.profile
