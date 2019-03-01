#!/bin/bash

clear
cat << "EOF"
____   _______  _______    ____   _______  _______    ____   _______  _______ 
|   | |  _    ||       |  |    | |       ||  _    |  |    | |       ||       |
|   | | | |   ||___    |   |   | |____   || | |   |   |   | |____   ||   ____|
|   | | | |   | ___|   |   |   |  ____|  || | |   |   |   |  ____|  ||  |____ 
|   | | |_|   ||___    |   |   | | ______|| |_|   |   |   | | ______||_____  |
|   | |       | ___|   |   |   | | |_____ |       |   |   | | |_____  _____| |
|___| |_______||_______|   |___| |_______||_______|   |___| |_______||_______|
POC
EOF

#How many cores?
echo "How many threads can I use?"
read thread
clear
echo "Press Ctrl+C $thread times to stop each job"

# Advanced CPU throttling loop
set -m #Enables Job ctrl
for i in `seq $thread`; do
    seq $thread | xargs -P0 -n1 md5sum /dev/zero
done
