#!/bin/bash

set -e
set -x


DIR=$1
YANG=$2

for file in `ls $DIR/*.json`; do 
    echo "Validating $file"
    ./validate -j $file -w config -y $YANG
done

