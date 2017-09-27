#!/usr/bin/env bash

# This script simulates the job execution environment for TACC's Agave
# platform. An emphemeral working directory has been created, files have
# been copied into place at the root level of that directory, and a
# task runner has been written out to the directory (*.ipcexe). In a 
# batch (HPC) system, the script will be actually be a scheduler job 
# script while on an interactive (CLI) system, the script itself is 
# executed in this directory on the host

_CONTAINER_ENGINE=${_CONTAINER_ENGINE:-docker} 
. _util/container_exec.sh

CONTAINER_IMAGE="msf:latest"
COMMAND='python'
PARAMS='/opt/scripts/msf.py --file exp2801-04-ds731218.msf --output exp2801-04-ds73121.csv'

container_exec ${CONTAINER_IMAGE} ${COMMAND} ${PARAMS}
