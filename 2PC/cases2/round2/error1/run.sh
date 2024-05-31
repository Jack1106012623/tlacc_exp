#!/bin/bash

# parameters
SPEC="TwoPhase"
CASE="cases2/round2/error1"
TLADIR=/Users/admin/tmp/tla/tlacc/2PC/${CASE}

# No need to change
TLC=/Users/admin/tmp/tla/tlacc/scripts/tla2tools.jar
TLACC=/Users/admin/tmp/tla/tlacc/scripts/tlacctools-v2.jar

TLAFILE=${TLADIR}/${SPEC}.tla
ROUNDFILE=${TLADIR}/${SPEC}.rounds

TLACCCMD="java -cp ${TLACC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE}  -rounds $ROUNDFILE"

TLCCMD="java -cp ${TLC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE}"

cfg=${TLADIR}/${SPEC}.cfg
tlaccout=${TLADIR}/tlacc-out.txt
tlcout=${TLADIR}/tlc-out.txt

${TLACCCMD} -config ${cfg} > ${tlaccout} 
${TLCCMD} -config ${cfg} > ${tlcout} 

