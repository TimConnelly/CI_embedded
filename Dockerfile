FROM ubuntu:latest as ses_build

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt-get install -y \
    build-essential \
    wget \
    git \
    zip unzip \
    libx11-6 libxrender1 libfontconfig1 libxext6 

FROM ses_build:latest as ses_full

WORKDIR /opt
RUN wget https://dl.segger.com/files/embedded-studio/Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
RUN tar -xzf Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
RUN mkdir /opt/ses
RUN arm_segger_embedded_studio_542_linux_x64/install_segger_embedded_studio --accept-license --copy-files-to /opt/ses
RUN rm Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
