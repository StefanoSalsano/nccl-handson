# Use the Ubuntu 24.04 base image
FROM ubuntu:22.04

# Update package lists
RUN apt-get update

# Install any packages or dependencies here
RUN apt-get install -y \
      gcc 
      wget

#RUN apt-get install linux-headers-$(uname -r)

RUN apt-get install linux-headers-5.15.0.-107

RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb \
       dpkg -i cuda-keyring_1.1-1_all.deb

RUN apt-get update

RUN apt-get install cuda-toolkit

#RUN apt-get install nvidia-gds

RUN apt-get install -y cuda-drivers
