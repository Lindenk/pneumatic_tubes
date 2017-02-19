#!/bin/bash

set -e

mkdir run
wget https://www.factorio.com/get-download/0.14.22/headless/linux64 -O run/factorio.tar.gz
tar -zxvf run/factorio.tar.gz -C run/
mkdir run/factorio/mods