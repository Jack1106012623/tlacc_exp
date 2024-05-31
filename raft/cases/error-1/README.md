错误描述
```
\* Quorum == {i \in SUBSET(Server) : Cardinality(i) * 2 > Cardinality(Server)}
Quorum == {i \in SUBSET(Server) : Cardinality(i) * 2 >= Cardinality(Server)}
```
- 将`Quorum`中的大于号改为了大于等于

实验结果：
- 经对比表明两者的error trace都正确，但由于RequestVote定义为send因此TLACC深度更深