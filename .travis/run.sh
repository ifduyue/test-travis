#!/bin/bash

ENVDIR=$HOME/.envs
mkdir -p $ENVDIR
pythonz list | tail -n +2 | while IFS=' -' read type version;do
    PYTHON=$(pythonz locate -t $type $version)
    $PYTHON --version
    virtualenv -p $PYTHON $ENVDIR/$type-$version
    $ENVDIR/$type-$version/bin/pip --version
done
