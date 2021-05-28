#!/bin/sh
cd source
make
cd ../test
../source/hueckel.x < ethylene.xyz > ethylene.out
cat ethylene.out
grep "Happy landing" ethylene.out
