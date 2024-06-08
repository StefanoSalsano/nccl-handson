#!/bin/bash
# execute this file in its location
# 

PMIX=pmix-4.2.9
PRRTE=prrte-3.0.5
OPENMPI=openmpi-5.0.3

echo && echo "apt install libevent-dev"
apt install -y libevent-dev

echo && echo "apt-get install libhwloc-dev"
apt install -y libhwloc-dev

mkdir $HOME/mpi_install
cd $HOME/mpi_install

echo && echo "wget https://github.com/openpmix/openpmix/releases/download/v4.2.9/$PMIX.tar.gz"
wget https://github.com/openpmix/openpmix/releases/download/v4.2.9/$PMIX.tar.gz

echo && echo "tar zxvf $PMIX.tar.gz"
tar zxvf $PMIX.tar.gz
cd $PMIX

echo && echo "./configure --prefix=/usr/local/bin 2>&1 | tee config.out"
./configure --prefix=/usr/local/bin 2>&1 | tee config.out

echo && echo "make -j 8 |& tee make.out"
make -j 8 |& tee make.out

echo && echo "make install |& tee install.out"
make install |& tee install.out

cd $HOME/mpi_install

echo && echo "wget https://github.com/openpmix/prrte/releases/download/v3.0.5/$PRRTE.tar.gz"
wget https://github.com/openpmix/prrte/releases/download/v3.0.5/$PRRTE.tar.gz

echo && echo "tar zxvf $PRRTE.tar.gz"
tar zxvf $PRRTE.tar.gz
cd $PRRTE

echo && echo "./configure --prefix=/usr/local/bin 2>&1 | tee config.out"
./configure --prefix=/usr/local/bin 2>&1 | tee config.out

echo && echo "make -j 8 |& tee make.out"
make -j 8 |& tee make.out

echo && echo "make install |& tee install.out"
make install |& tee install.out

cd $HOME/mpi_install

echo && echo "wget https://download.open-mpi.org/release/open-mpi/v5.0/$OPENMPI.tar.gz"
wget https://download.open-mpi.org/release/open-mpi/v5.0/$OPENMPI.tar.gz

echo && echo "tar zxvf $OPENMPI.tar.gz"
tar zxvf $OPENMPI.tar.gz
cd $OPENMPI

echo && echo "./configure --prefix=/usr/local/bin 2>&1 | tee config.out"
./configure --prefix=/usr/local/bin 2>&1 | tee config.out

echo && echo "make -j 8 |& tee make.out"
make -j 8 |& tee make.out

echo && echo "make install |& tee install.out"
make install |& tee install.out

