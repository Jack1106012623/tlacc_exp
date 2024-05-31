#!/bin/bash

# parameters
SPEC="Paxos"
CASE="right-0"
VERSION=$(date +"%Y%m%d-%H-%M-%S")
cases=(2)

TLADIR=/Users/admin/tmp/tla/tlacc/Paxos/cases/${CASE}
TLC=/Users/admin/tmp/tla/tlacc/scripts/tla2tools.jar
TLACC=/Users/admin/tmp/tla/tlacc/scripts/tlacctools-v2.jar
TLAFILE=${TLADIR}/${SPEC}.tla
ROUNDFILE=${TLADIR}/${SPEC}.rounds

TLACCCMD="java -cp ${TLACC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE} "

TLCCMD="java -cp ${TLC} -XX:+UseParallelGC tlc2.TLC \
     -workers 1 -noGenerateSpecTE \
     ${TLAFILE}"

outdir=${TLADIR}/${VERSION}
# 检查目录是否存在
if [ ! -d "$outdir" ]; then
    mkdir -p "$outdir"  # 使用-p选项可以创建多级目录，如果存在则不会报错
fi


for case in ${cases[@]}; do
    cfg=${TLADIR}/${case}.cfg
    rounds=${TLADIR}/${case}.rounds
    outtlacc=${outdir}/tlacc-${case}.txt
    outtlc=${outdir}/tlc-${case}.txt
    
    echo @@ $Version $SPEC $CASE $case TLACC Started! @@
    ${TLACCCMD} -config ${cfg} -rounds ${rounds} > ${outtlacc} 
    sleep 5
    echo @@ $Version $SPEC $CASE $case TLACC Finished! @@
    
    # echo @@ $Version $SPEC $CASE $case TLC Started! @@
    # ${TLCCMD} -config ${cfg} > ${outtlc}
    # echo @@ $Version $SPEC $CASE $case TLC Finished! @@
    # sleep 5
    # echo ""
done







