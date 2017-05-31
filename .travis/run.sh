#!/bin/bash

for PYTHON in $(pythonz list | tail -n +2 | tr - ' ' | xargs -n2 pythonz locate -t $1 $2); do
    $PYTHON --version
    $PYTHON -mpip --version
done
