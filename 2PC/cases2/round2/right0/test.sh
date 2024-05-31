#!/bin/bash

# parameters
SPEC="TwoPhase"
CASE="cases2/round2/right0"
TLADIR=/Users/admin/tmp/tla/tlacc/2PC/${CASE}
cases=(9)

# No need to change
TLC=/Users/admin/tmp/tla/tlacc/scripts/tla2tools.jar
TLACC=/Users/admin/tmp/tla/tlacc/scripts/tlacctools-v3.jar

TLAFILE=${TLADIR}/${SPEC}.tla
ROUNDFILE=${TLADIR}/${SPEC}.rounds

TLACCCMD="java -cp ${TLACC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE}  -rounds $ROUNDFILE"

TLCCMD="java -cp ${TLC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE}"

VERSION=$(date +"%Y%m%d-%H-%M-%S")
outdir=${TLADIR}/${VERSION}

# 检查目录是否存在
if [ ! -d "$outdir" ]; then
    mkdir -p "$outdir"  # 使用-p选项可以创建多级目录，如果存在则不会报错
fi


for case in ${cases[@]}; do
    cfg=${TLADIR}/${case}.cfg
    outtlacc=${outdir}/tlacc-${case}.txt
    outtlc=${outdir}/tlc-${case}.txt
    
    echo @@ $Version $SPEC $CASE $case TLACC Started! @@
    ${TLACCCMD} -config ${cfg} > ${outtlacc} 
    echo @@ $Version $SPEC $CASE $case TLACC Finished! @@
    # sleep 5
    
    # echo @@ $Version $SPEC $CASE $case TLC Started! @@
    # ${TLCCMD} -config ${cfg} > ${outtlc}
    # echo @@ $Version $SPEC $CASE $case TLC Finished! @@
    # sleep 5
    # echo ""
done


