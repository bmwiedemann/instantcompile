#!/bin/sh -x
testdir=$(dirname $(readlink -f $0))
dirs=$(find $testdir -maxdepth 1 -type d -name 'test[1-9]*' | sort)

for d in $dirs ; do
    echo "running test $d"
    make -C $d clean all || exit $?
done

export PATH=$testdir/../bin:$PATH
for d in $dirs ; do
    echo "running test $d"
    make -C $d clean all || exit $?
done

for d in $dirs ; do
    make -C $d clean
done
