#!/usr/bin/env bash

apt-get update
sudo apt-get install -y build-essential \
                        zip \
                        unzip

# Get Segger Embedded Studio 5.4
## SES dependencies
sudo apt-get install -y libx11-6 libxrender1 libfontconfig1 libxext6
wget https://dl.segger.com/files/embedded-studio/Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
tar -xzf Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
sudo mkdir /opt/ses
sudo arm_segger_embedded_studio_542_linux_x64/install_segger_embedded_studio --accept-license --copy-files-to /opt/ses 
