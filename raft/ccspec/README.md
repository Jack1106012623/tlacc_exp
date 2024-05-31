Error: The behavior up to this point is:
State 1: <Init line 159, col 9 to line 164, col 22 of module raft>
/\ elections = {}
/\ messages = << >>
/\ matchIndex = (n1 :> (n1 :> 0 @@ n2 :> 0) @@ n2 :> (n1 :> 0 @@ n2 :> 0))
/\ log = (n1 :> <<>> @@ n2 :> <<>>)
/\ state = (n1 :> Follower @@ n2 :> Follower)
/\ commitIndex = (n1 :> 0 @@ n2 :> 0)
/\ currentTerm = (n1 :> 1 @@ n2 :> 1)
/\ votesResponded = (n1 :> {} @@ n2 :> {})
/\ nextIndex = (n1 :> (n1 :> 1 @@ n2 :> 1) @@ n2 :> (n1 :> 1 @@ n2 :> 1))
/\ votesGranted = (n1 :> {} @@ n2 :> {})
/\ voterLog = (n1 :> << >> @@ n2 :> << >>)
/\ votedFor = (n1 :> Nil @@ n2 :> Nil)
/\ CCIterator: Initial Action, msgs1 = null, msgs2 = null
State 2: <Timeout[i->n1, i->n1] line 182, col 15 to line 191, col 60 of module raft>
/\ elections = {}
/\ messages = << >>
/\ matchIndex = (n1 :> (n1 :> 0 @@ n2 :> 0) @@ n2 :> (n1 :> 0 @@ n2 :> 0))
/\ log = (n1 :> <<>> @@ n2 :> <<>>)
/\ state = (n1 :> Candidate @@ n2 :> Follower)
/\ commitIndex = (n1 :> 0 @@ n2 :> 0)
/\ currentTerm = (n1 :> 2 @@ n2 :> 1)
/\ votesResponded = (n1 :> {} @@ n2 :> {})
/\ nextIndex = (n1 :> (n1 :> 1 @@ n2 :> 1) @@ n2 :> (n1 :> 1 @@ n2 :> 1))
/\ votesGranted = (n1 :> {} @@ n2 :> {})
/\ voterLog = (n1 :> << >> @@ n2 :> << >>)
/\ votedFor = (n1 :> Nil @@ n2 :> Nil)
/\ CCIterator: [rn = 0, idx = 0, rcv = 1], msgs1 = null, msgs2 = null
State 3: <RequestVote[j->n1, i->n1, j->n1, i->n1] line 195, col 5 to line 203, col 67 of module raft>
/\ elections = {}
/\ messages = ( [ mtype |-> RequestVoteRequest,
    mterm |-> 2,
    mlastLogTerm |-> 0,
    mlastLogIndex |-> 0,
    msource |-> n1,
    mdest |-> n1 ] :>
      1 )
/\ matchIndex = (n1 :> (n1 :> 0 @@ n2 :> 0) @@ n2 :> (n1 :> 0 @@ n2 :> 0))
/\ log = (n1 :> <<>> @@ n2 :> <<>>)
/\ state = (n1 :> Candidate @@ n2 :> Follower)
/\ commitIndex = (n1 :> 0 @@ n2 :> 0)
/\ currentTerm = (n1 :> 2 @@ n2 :> 1)
/\ votesResponded = (n1 :> {} @@ n2 :> {})
/\ nextIndex = (n1 :> (n1 :> 1 @@ n2 :> 1) @@ n2 :> (n1 :> 1 @@ n2 :> 1))
/\ votesGranted = (n1 :> {} @@ n2 :> {})
/\ voterLog = (n1 :> << >> @@ n2 :> << >>)
/\ votedFor = (n1 :> Nil @@ n2 :> Nil)
/\ CCIterator: [rn = 1, idx = 0, send = 3], msgs1 = null, msgs2 = 0
State 4: <RequestVote[j->n2, i->n1, j->n2, i->n1] line 195, col 5 to line 203, col 67 of module raft>
/\ elections = {}
/\ messages = ( [ mtype |-> RequestVoteRequest,
    mterm |-> 2,
    mlastLogTerm |-> 0,
    mlastLogIndex |-> 0,
    msource |-> n1,
    mdest |-> n1 ] :>
      1 @@
  [ mtype |-> RequestVoteRequest,
    mterm |-> 2,
    mlastLogTerm |-> 0,
    mlastLogIndex |-> 0,
    msource |-> n1,
    mdest |-> n2 ] :>
      1 )
/\ matchIndex = (n1 :> (n1 :> 0 @@ n2 :> 0) @@ n2 :> (n1 :> 0 @@ n2 :> 0))
/\ log = (n1 :> <<>> @@ n2 :> <<>>)
/\ state = (n1 :> Candidate @@ n2 :> Follower)
/\ commitIndex = (n1 :> 0 @@ n2 :> 0)
/\ currentTerm = (n1 :> 2 @@ n2 :> 1)
/\ votesResponded = (n1 :> {} @@ n2 :> {})
/\ nextIndex = (n1 :> (n1 :> 1 @@ n2 :> 1) @@ n2 :> (n1 :> 1 @@ n2 :> 1))
/\ votesGranted = (n1 :> {} @@ n2 :> {})
/\ voterLog = (n1 :> << >> @@ n2 :> << >>)
/\ votedFor = (n1 :> Nil @@ n2 :> Nil)
/\ CCIterator: [rn = 1, idx = 2, send = 5], msgs1 = null, msgs2 = 1
State 5: <CCHandleRequestVoteRequest[j->n1, i->n1, j->n1, i->n1] line 557, col 5 to line 564, col 64 of module raft>
/\ elections = {}
/\ messages = ( [ mtype |-> RequestVoteRequest,
    mterm |-> 2,
    mlastLogTerm |-> 0,
    mlastLogIndex |-> 0,
    msource |-> n1,
    mdest |-> n1 ] :>
      0 @@
  [ mtype |-> RequestVoteRequest,
    mterm |-> 2,
    mlastLogTerm |-> 0,
    mlastLogIndex |-> 0,
    msource |-> n1,
    mdest |-> n2 ] :>
      1 @@
  [ mtype |-> RequestVoteResponse,
    mterm |-> 2,
    msource |-> n1,
    mdest |-> n1,
    mlog |-> <<>>,
    mvoteGranted |-> TRUE ] :>
      1 )
/\ matchIndex = (n1 :> (n1 :> 0 @@ n2 :> 0) @@ n2 :> (n1 :> 0 @@ n2 :> 0))
/\ log = (n1 :> <<>> @@ n2 :> <<>>)
/\ state = (n1 :> Candidate @@ n2 :> Follower)
/\ commitIndex = (n1 :> 0 @@ n2 :> 0)
/\ currentTerm = (n1 :> 2 @@ n2 :> 1)
/\ votesResponded = (n1 :> {} @@ n2 :> {})
/\ nextIndex = (n1 :> (n1 :> 1 @@ n2 :> 1) @@ n2 :> (n1 :> 1 @@ n2 :> 1))
/\ votesGranted = (n1 :> {} @@ n2 :> {})
/\ voterLog = (n1 :> << >> @@ n2 :> << >>)
/\ votedFor = (n1 :> n1 @@ n2 :> Nil)
/\ CCIterator: [rn = 1, idx = 4, rcv = 7], msgs1 = null, msgs2 = 2