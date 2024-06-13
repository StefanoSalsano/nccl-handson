#!/bin/bash
# this script is used to execute a nccl test with
# NCCL_DEBUG=TRACE

# this script needs to be copied in /home/mpi

# example usage:
# mpirun --host vm1,vm2,vm3,vm4 -np 4 /home/mpi/debug_trace.sh "/home/mpi/nccl-tests/build/all_reduce_perf -b 64M -e 64M -f 2 -g 1"


export NCCL_DEBUG=TRACE
$1

