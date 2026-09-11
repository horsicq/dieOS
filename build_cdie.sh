#!/bin/bash
git submodule update --init --recursive
cd CDiE
mkdir -p build
cd build
cmake ..
make