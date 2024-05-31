#!/bin/bash

SPEC="TwoPhase"
CASE="right-0"

TLC=/Users/admin/tmp/tla/tlacc/scripts/tla2tools.jar
TLACC=/Users/admin/tmp/tla/tlacc/scripts/tlacctools.jar
TLADIR=/Users/admin/tmp/tla/tlacc/2PC/cases
PREFIX=${TLADIR}/${CASE}/${SPEC}
TLAFILE=${PREFIX}.tla
CFGFILE=${PREFIX}.cfg
ROUNDFILE=${PREFIX}.rounds
OUTPUTFILE=${PREFIX}.txt
# java -cp ${TLAJARPATH} -XX:+UseParallelGC tlc2.TLC $SPECFILE -config $CFGFILE

java -cp ${TLACC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     $TLAFILE  -config $CFGFILE -rounds $ROUNDFILE \
    #  > $OUTPUTFILE