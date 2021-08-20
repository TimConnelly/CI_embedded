FROM ubuntu:latest

# Jenkins SSH config 
# RUN mkdir /home/jenkins/.ssh
# COPY .ssh/jenkins_agent_key.pub /home/jenkins/.ssh/authorized_keys
# RUN chown -R jenkins /home/jenkins/.ssh
# RUN chmod 600 /home/jenkins/.ssh/authorized_keys
# RUN chmod 700 /home/jenkins/.ssh

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt-get install -y \
    build-essential \
    wget \
    git \
    zip unzip \
    libx11-6 libxrender1 libfontconfig1 libxext6 


# WORKDIR /opt
# RUN wget https://dl.segger.com/files/embedded-studio/Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
# RUN tar -xzf Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
# RUN mkdir /opt/ses
# RUN arm_segger_embedded_studio_542_linux_x64/install_segger_embedded_studio --accept-license --copy-files-to /opt/ses
# RUN rm Setup_EmbeddedStudio_ARM_v542_linux_x64.tar.gz
