错误说明
```
Phase2a(b, v) ==
  /\ ~ \E m \in msgs : m.type = "2a" /\ m.bal = b
  /\ \E Q \in Quorum :
        LET Q1b == {m \in msgsBak : /\ m.type = "1b"
                                    /\ m.acc \in Q
                                    /\ m.bal = b}
            Q1bv == {m \in Q1b : m.mbal \geq 0}
        IN  /\ \A a \in Q : \E m \in Q1b : m.acc = a 
            /\ \/ Q1bv = {}
               \/ \E m \in Q1bv : 
                    \* /\ m.mval = v
                    /\ \A mm \in Q1bv : m.mbal \geq mm.mbal 
  /\ Send([type |-> "2a", bal |-> b, val |-> v])
  /\ UNCHANGED <<maxBal, maxVBal, maxVal>>
```
- 注释掉`/\ m.mval = v`

实验说明
- 固定参数
```
Value = {v1, v2, v3}
MCMaxBallot == 2 (0..2)
```
- 调整`Acceptor`大小分别为`3,4,5,6,7`
- error-1已完成，经对比 error trace 无误

3
- 3284 states generated, 3140 distinct states found, 1891 states left on queue. 10, 02s
- 30786 states generated, 8068 distinct states found, 4539 states left on queue. 10, 04s

4
- 21749 states generated, 21101 distinct states found, 12169 states left on queue. 12, 12s
- 225721 states generated, 50909 distinct states found, 27237 states left on queue. 12, 39s
5
- 118660 states generated, 112300 distinct states found, 73979 states left on queue. 12, 01min 11s
- 1487792 states generated, 323941 distinct states found, 206094 states left on queue. 12, 04min 32s

6
- 1012806 states generated, 972810 distinct states found, 621271 states left on queue. 14, 18min 24s
- 14001928 states generated, 2686338 distinct states found, 1657266 states left on queue. 14, 59min 22s

7
- 4746727 states generated, 4482316 distinct states found, 3101873 states left on queue. 14, 01h 15min
- 77489094 states generated, 14351710 distinct states found, 9744555 states left on queue. 14, 05h 09min


ds/time:

54045
45531

59764
46445