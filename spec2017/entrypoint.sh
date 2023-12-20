#!/bin/bash
set -x

mkdir -p $tmpdir/cpu2017_install
mkdir -p $tmpdir/cpu2017
sudo mount -t iso9660 -o ro,exec,loop $tmpdir/cpu2017-1_0_5.iso $tmpdir/cpu2017_install
cd $tmpdir/cpu2017_install && echo "yes" | ./install.sh -d $tmpdir/cpu2017

mv $tmpdir/memtrace.cfg $tmpdir/cpu2017/config/memtrace.cfg
mv $tmpdir/compile-538-clang.sh $tmpdir/cpu2017/benchspec/CPU
