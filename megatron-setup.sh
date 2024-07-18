#!/bin/bash

#run this script as root user

cd /home/mpi
mkdir megatron
cd megatron

mkdir tensorboard_logs
mkdir data
mkdir checkpoint
git clone https://github.com/StefanoSalsano/Megatron-LM.git

chown -R mpi:mpi /home/mpi

