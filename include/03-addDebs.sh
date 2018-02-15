#!/bin/bash

cd $HOME

apt-get -y install $(cat debs.txt | grep -v "^#")

echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
