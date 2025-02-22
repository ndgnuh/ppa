#!/bin/sh
usage () {
    echo "Usage: ./build.sh <folder name>"
}

if [ -z $1 ]; then
    usage;
    exit 2
fi
if [ ! -e $1 ]; then
    echo "$1 does not exist"
    usage;
    exit 1
fi
dpkg-deb --build --root-owner-group $1
