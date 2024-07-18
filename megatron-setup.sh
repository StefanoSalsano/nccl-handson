#!/bin/bash

#run this script as root user

cd /home/mpi

mkdir megatron
mkdir tensorboard_logs
mkdir data
mkdir checkpoint
git clone https://github.com/NVIDIA/Megatron-LM.git

chown -R mpi:mpi /home/mpi

