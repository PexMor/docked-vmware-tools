#!/bin/bash

source cfg.inc

docker kill $DNAME
docker rm $DNAME
docker system prune