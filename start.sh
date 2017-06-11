#!/bin/bash

#allows testing via command line on IUHPC
if [ -z $SERVICE_DIR ]; then export SERVICE_DIR=`pwd`; fi
if [ -z $ENV ]; then export ENV=IUHPC; fi

#clean up previous job (just in case)
rm -f finished

#submit!
jobid=`qsub $ERVICE_DIR/submit.pbs`
echo $jobid > jobid

