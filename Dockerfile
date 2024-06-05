# Use the Ubuntu 24.04 base image
FROM ubuntu:22.04

# Update package lists
RUN apt-get update

# Install any packages or dependencies here
RUN apt-get install -y \
      gcc \
      wget

RUN apt-get install -y linux-headers-$(uname -r)

RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb

RUN dpkg -i cuda-keyring_1.1-1_all.deb

RUN apt-get update

#Installs all CUDA Toolkit packages required to develop applications.
#Handles upgrading to the next 12.x version of CUDA when it’s released.
#Does not include the driver.
RUN apt-get install -y cuda-toolkit

#install the legacy kernel module flavor:
#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y cuda-drivers

#install the open kernel module flavor:
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nvidia-driver-555-open
RUN apt-get install -y cuda-drivers-555

RUN apt-get install -y pciutils

#RUN apt-get install nvidia-gds
