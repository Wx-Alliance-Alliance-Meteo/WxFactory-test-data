#!/bin/bash
export SCRIPT_FOLDER=$(dirname $(realpath "${BASH_SOURCE[0]}"))
if [ ! -f "$SCRIPT_FOLDER/load-env.sh" ]; then
    echo "There is no environment to load"
    exit 2
fi

. $SCRIPT_FOLDER/load-env.sh

cd $SCRIPT_FOLDER/../../../..

mpirun -n 13824 ./WxFactory $SCRIPT_FOLDER/config.ini