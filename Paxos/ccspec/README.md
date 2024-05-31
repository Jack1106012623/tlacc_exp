Paxos需要修改规约，本文件下为修改后的规约

规约修改
- `Paxos`中参数变更为：`Value, Acceptor, Ballot, None`，`Voting`中相应的变更参数
- 新增`msgsBak`变量

有损同步执行定义
- `Paxos.in`为有损同步执行定义语言示例，`Paxos.rounds`为生成的Round配置文件

