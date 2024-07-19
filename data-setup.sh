#!/bin/bash

#this script assume that there is a shared folder in the host
#mapped in /home/mpi/megatron/shared-data/
#run this script as root

cd /home/mpi/megatron/shared-data/
wget https://s3.amazonaws.com/models.huggingface.co/bert/gpt2-vocab.json
wget https://s3.amazonaws.com/models.huggingface.co/bert/gpt2-merges.txt

chown -R mpi:mpi /home/mpi/megatron/shared-data/


