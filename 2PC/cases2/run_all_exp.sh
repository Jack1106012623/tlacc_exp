#!/bin/bash

BASEDIR=/Users/admin/tmp/tla/tlacc/2PC/cases2


echo @@ 2PC cases2 round1 Started! @@
bash $BASEDIR/round1/error1/run_exp.sh
bash $BASEDIR/round1/error2/run_exp.sh
bash $BASEDIR/round1/right0/run_exp.sh
echo @@ 2PC cases2 round1 Finished! @@


echo @@ 2PC cases2 round2 Started! @@
bash $BASEDIR/round2/error1/run_exp.sh
bash $BASEDIR/round2/error2/run_exp.sh
bash $BASEDIR/round2/right0/run_exp.sh
echo @@ 2PC cases2 round2 Finished! @@
