#!/bin/bash

BASEDIR=/Users/admin/tmp/tla/tlacc

echo @@ 2PC Started! @@
bash $BASEDIR/2PC/cases/error-1/run.sh
bash $BASEDIR/2PC/cases/right-0/run.sh
echo @@ 2PC Finished! @@

echo @@ Paxos Started! @@
bash $BASEDIR/Paxos/cases/error-1/run.sh
bash $BASEDIR/Paxos/cases/error-2/run.sh
bash $BASEDIR/Paxos/cases/right-0/run.sh
echo @@ Paxos Finished! @@

echo @@ raft Started! @@
bash $BASEDIR/raft/cases/error-1/run.sh
bash $BASEDIR/raft/cases/error-2/run.sh
bash $BASEDIR/raft/cases/right-0/run.sh
echo @@ raft Finished! @@