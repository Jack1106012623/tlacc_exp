#!/bin/bash

# parameters
SPEC="raft"
CASE="right-0"
VERSION=$(date +"%Y%m%d-%H-%M-%S")
cases=(2 3)

TLADIR=/Users/admin/tmp/tla/tlacc/raft/cases/${CASE}
TLC=/Users/admin/tmp/tla/tlacc/scripts/tla2tools.jar
TLACC=/Users/admin/tmp/tla/tlacc/scripts/tlacctools-v2.jar
TLAFILE=${TLADIR}/${SPEC}.tla
ROUNDFILE=${TLADIR}/${SPEC}.rounds

TLACCCMD="java -cp ${TLACC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE} -rounds $ROUNDFILE"

TLCCMD="java -cp ${TLC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE}"
## May need change


${TLCCMD} -h








