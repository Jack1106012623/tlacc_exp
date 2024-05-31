错误描述
```
HandleRequestVoteRequest(i, j, m) ==
    LET logOk == \/ m.mlastLogTerm > LastTerm(log[i])
                 \/ /\ m.mlastLogTerm = LastTerm(log[i])
                    /\ m.mlastLogIndex >= Len(log[i])
        grant == /\ m.mterm = currentTerm[i]
                 /\ logOk
                 /\ votedFor[i] \in {Nil, j}
    IN /\ m.mterm <= currentTerm[i]
       /\ \/ grant  /\ UNCHANGED votedFor \* votedFor' = [votedFor EXCEPT ![i] = j]
       /\ \/ grant  /\ UNCHANGED votedFor
          \/ ~grant /\ UNCHANGED votedFor
       /\ Reply([mtype        |-> RequestVoteResponse,
                 mterm        |-> currentTerm[i],
                 mvoteGranted |-> grant,
                 \* mlog is used just for the `elections' history variable for
                 \* the proof. It would not exist in a real implementation.
                 mlog         |-> log[i],
                 msource      |-> i,
                 mdest        |-> j],
                 m)
       /\ UNCHANGED <<state, currentTerm, candidateVars, leaderVars, logVars>>

HandleRequestVoteRequestWithBigTerm(i, j, m) ==
    /\  currentTerm'    = [currentTerm EXCEPT ![i] = m.mterm]
    /\  state'          = [state       EXCEPT ![i] = Follower]
    /\  LET logOk ==\/ m.mlastLogTerm > LastTerm(log[i])
                    \/  /\ m.mlastLogTerm = LastTerm(log[i])
                        /\ m.mlastLogIndex >= Len(log[i])
            grant ==logOk
        IN  /\  m.mterm <= m.mterm
            /\  \/ grant  /\ UNCHANGED votedFor \* votedFor' = [votedFor EXCEPT ![i] = j]
                \/ ~grant /\ UNCHANGED votedFor \* votedFor' = [votedFor EXCEPT ![i] = Nil]
            /\ Reply([  mtype        |-> RequestVoteResponse,
                        mterm        |-> m.mterm,
                        mvoteGranted |-> grant,
                        \* mlog is used just for the `elections' history variable for
                        \* the proof. It would not exist in a real implementation.
                        mlog         |-> log[i],
                        msource      |-> i,
                        mdest        |-> j],
                        m)
            /\ UNCHANGED <<candidateVars, leaderVars, logVars>>

```
- 将`HandleRequestVoteRequest`与`HandleRequestVoteRequestWithBigTerm`中有关`votedFor`的变量变化取消，模拟不记录投票信息的错误