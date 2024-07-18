#!/bin/bash

#run this script root user

cd /home/mpi
su mpi
mkdir megatron

git clone https://github.com/NVIDIA/Megatron-LM.git

mkdir tensorboard_logs
mkdir data
mkdir checkpoint


