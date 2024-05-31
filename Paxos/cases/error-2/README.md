## 错误说明
```
\* Before
Phase2b(a) == \E m \in msgs : /\ m.type = "2a"
                              /\ m.bal \geq maxBal[a]
                              /\ maxBal' = [maxBal EXCEPT ![a] = m.bal] 
                              /\ maxVBal' = [maxVBal EXCEPT ![a] = m.bal] 
                              /\ maxVal' = [maxVal EXCEPT ![a] = m.val]
                              /\ Send([type |-> "2b", acc |-> a,
                                       bal |-> m.bal, val |-> m.val]) 
\* After
Phase2b(a) == \E m \in msgs : /\ m.type = "2a"
                              /\ m.bal \geq maxBal[a]
                              /\ maxBal' = [maxBal EXCEPT ![a] = m.bal] 
                              /\ maxVBal' = [maxVBal EXCEPT ![a] = m.bal] 
                              /\ Send([type |-> "2b", acc |-> a,
                                       bal |-> m.bal, val |-> m.val]) 
                              /\ UNCHANGED maxVal
```
- 修改了`Phase2b(a)`中的`maxVal`，设置为`/\ UNCHANGED maxVal`

## 实验说明
- 固定参数
```
Value = {v1, v2, v3}
MCMaxBallot == 2 (0..2)
```
- 调整`Acceptor`大小分别为`3,5,7,9,11`

实验结果：经对比errortrace没问题

3
- 54 states generated, 45 distinct states found, 27 states left on queue. 6, 01s
- 620 states generated, 241 distinct states found, 156 states left on queue. 6, 01s


5
- 272 states generated, 248 distinct states found, 161 states left on queue. 7, 01s
- 6294 states generated, 1829 distinct states found, 1219 states left on queue. 7, 04s

7
- 1758 states generated, 1713 distinct states found, 1138 states left on queue. 8, 05s
- 73403 states generated, 17061 distinct states found, 11787 states left on queue. 8, 32s

9
- 13556 states generated, 13484 distinct states found, 9047 states left on queue. 9, 01min 36s
- 922313 states generated, 180606 distinct states found, 129323 states left on queue. 9, 18min 52s

11
- 113395 states generated, 113290 distinct states found, 76353 states left on queue. 10, 15min 22s
- 12213681 states generated, 2078250 distinct states found, 1533960 states left on queue. 10, 04h 38min


ds/time

