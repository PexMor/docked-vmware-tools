#!/bin/bash

source cfg.inc

# to avoid failure of not updated image
OPT=--no-cache
OPT=""

B=`date +%s`
docker build \
    $OPT \
    -t $INAME \
    . 2>&1 | tee tmp-log.txt
E=`date +%s`
D=$[E-B]
echo "image name='$INAME' build took: ${D}s"
