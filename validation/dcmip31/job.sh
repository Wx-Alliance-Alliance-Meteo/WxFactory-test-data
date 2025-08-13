#!/bin/bash
export SCRIPT_FOLDER=$1
echo $SCRIPT_FOLDER
if [ ! -f "$SCRIPT_FOLDER/load-env.sh" ]; then
    echo "There is no environment to load"
    exit 2
fi

. $SCRIPT_FOLDER/load-env.sh

cd $SCRIPT_FOLDER/../../../..

mpirun -n 7776 ./WxFactory $SCRIPT_FOLDER/config.ini
