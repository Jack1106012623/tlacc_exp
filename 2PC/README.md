

spec目录下为原规约，case2目录下为论文中实验(case2无特殊含义，case1实验设计有误，新建了case2)

`round1,2,3`分别对应三种round 定义
- round1: 修改了规约，如增加了动作`RMPrepareOrAbort`
- round2: 未修改规约，`TMAbort`放入第3个round
- round3: 未修改规约，`TMAbort`放入第1, 3个round

`cases2`
- `run_all_cases`：四种错误注入，检查错误发现能力
- `run_all_exp`：round1,2 的 error1, error2, right0。
- 实验分多次进行，期间可能更改了配置，注意运行前要检查所有的运行脚本