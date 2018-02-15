#!/bin/bash

source cfg.inc
source include/00-colors.sh
source shFce.sh

# make other mapped dirs
cmkdir "$SD/bin"
cmkdir "/tmp/install"

OVR=y
xcp "skeleton" "$SD"
