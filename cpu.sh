#!/bin/bash

# Advanced CPU throttling
set -m #Enables Job ctrl
for i in `seq 1000`; do #1000 threads
    seq 16 | xargs -P0 -n1 md5sum /dev/zero # Max out up 16 Cores
done
