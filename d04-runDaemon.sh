#!/bin/bash

source cfg.inc

SNAME=`basename "$0"`
SNAME=${SNAME#*-}
SNAME=${SNAME%.*}

if [ "x$SNAME" = "xrunDaemon" ]; then
    OPTS=-d
    CMD="/usr/local/bin/loopForEver"
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
