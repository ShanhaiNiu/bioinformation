#!/bin/bash

animal=$(ls /data/soft/node/8.9.3/lib/node_modules/cowsay/cows | shuf -n 1)
declare -i name_length=${#animal}-4

/data/soft/bin/fortune | /data/soft/node/8.9.3/bin/cowsay -f ${animal:0:$name_length}
