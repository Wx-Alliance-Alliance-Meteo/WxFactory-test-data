#!/bin/bash
export SCRIPT_FOLDER=$(dirname $(realpath "${BASH_SOURCE[0]}"))
qsub -lselect=100:ncpus=80:mpiprocs=80:ompthreads=1:mem=160G -lwalltime=3:0:0 -- $SCRIPT_FOLDER/job.sh $SCRIPT_FOLDER