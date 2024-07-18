#!/bin/bash

#run this script as mpi user

cd /home/mpi
mkdir megatron

git clone https://github.com/NVIDIA/Megatron-LM.git

mkdir tensorboard_logs
mkdir data
mkdir checkpoint


