#!/bin/bash

BASEDIR=/Users/admin/tmp/tla/tlacc

echo @@ 2PC cases2 round1 Started! @@
bash $BASEDIR/2PC/cases2/round1/error1/run.sh
bash $BASEDIR/2PC/cases2/round1/error2/run.sh
bash $BASEDIR/2PC/cases2/round1/error3/run.sh
bash $BASEDIR/2PC/cases2/round1/error4/run.sh
echo @@ 2PC cases2 round1 Finished! @@

echo @@ 2PC cases2 round2 Started! @@
bash $BASEDIR/2PC/cases2/round2/error1/run.sh
bash $BASEDIR/2PC/cases2/round2/error2/run.sh
bash $BASEDIR/2PC/cases2/round2/error3/run.sh
bash $BASEDIR/2PC/cases2/round2/error4/run.sh
echo @@ 2PC cases2 round2 Finished! @@

echo @@ 2PC cases2 round3 Started! @@
bash $BASEDIR/2PC/cases2/round3/error1/run.sh
bash $BASEDIR/2PC/cases2/round3/error2/run.sh
bash $BASEDIR/2PC/cases2/round3/error3/run.sh
bash $BASEDIR/2PC/cases2/round3/error4/run.sh
echo @@ 2PC cases2 round3 Finished! @@
