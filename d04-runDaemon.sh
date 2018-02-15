#!/bin/bash

source cfg.inc

SNAME=`basename "$0"`
SNAME=${SNAME#*-}
SNAME=${SNAME%.*}

if [ "x$SNAME" = "xrunDaemon" ]; then
    OPTS=-d
    CMD="/bin/sh -c \"while true; do date; sleep 30; done\""
else
    OPTS=-it
    CMD="/bin/bash"
fi

docker run \
    $OPTS \
    $VOLS \
    -h $DNAME \
    --name $DNAME \
    $INAME \
    $CMD
