#!/bin/bash

PMIX=pmix-4.2.9

mkdir mpi_install
cd mpi_install

echo && echo "apt install libevent-dev"
apt install libevent-dev

echo && echo "apt-get install libhwloc-dev"
apt install libhwloc-dev

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

cd ..

echo && echo ""
echo && echo ""
echo && echo ""
echo && echo ""
echo && echo ""
echo && echo ""

