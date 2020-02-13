#!/bin/sh -x
dirs=$(find -maxdepth 1 -type d -name test\* | sort)

for d in $dirs ; do
    echo "running test $d"
    make -C $d clean all || exit $?
done

export CC=`pwd`/../bin/cc
for d in $dirs ; do
    echo "running test $d"
    make -C $d clean all || exit $?
done

for d in $dirs ; do
    make -C $d clean
done
