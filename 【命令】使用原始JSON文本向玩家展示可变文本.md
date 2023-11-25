# WIP:【命令】使用原始JSON文本向玩家展示可变文本

我们知道，诸如/say /title 的命令中的文本都可以使用目标选择器在其中展示实体的名字。
例如，为每个玩家显示其半径32米内最近10个怪物：
```/execute as @a at @s run title @s actionbar 最近10个怪物: @e[r=32, c=10, family=monster]
```
这条指令，会的人觉得简单，不会的人应该觉得很复杂，其实就是execute套title为玩家独立展示文字，毕竟不可能每个玩家附近都有同样的实体。（除非全部玩家站在一起）

不过我们的重点不是这个，我只是尝试引入可变文本而已。

如果想显示玩家在记分项上的分数，就不是写一个目标选择器那么简单的了。在这里，我们使用原始JSON文本来完成这一目的。

目前可以使用原始JSON文本的命令只有`/tellraw`和`/titleraw`，分别对应聊天信息和标题。

```
/titleraw @a title {"rawtext": [{"text": "最终得分: "}, {"score": {"objective": "最终得分", "name": "*"}}]}
```
上方的指令就使用了原始JSON文本来向所有玩家展示他们在记分项“最终得分”上的分数。
这里你可能注意到name为`*`，它的意思是“看到文本的人”，这样你就没有必要套个execute再显示给所有玩家了，分数将会使用查看者的分数。

上述显示最近实体的例子也可以用/titleraw 重写：
```
/execute as @a at @s run titleraw @s actionbar {"rawtext": [{"text": "最近10个怪物: "}, {"selector": "@e[r=32, c=10, family=monster]" }]}
```

在文字中插入占位符，并提供参数：
```
/titleraw @a actionbar {"rawtext": [{"translate": "玩家 %%s 的分数: %%s", "with": {"rawtext": [{"selector": "@s"}, {"score": {"objective": "我的分数", "name": "@s" }}]}}]}
```

（此教程处于正在编写的过程当中，欢迎各位发表意见或建议。）

参考：
[命令/titleraw](https://minecraft.fandom.com/zh/wiki/命令/titleraw)
[命令/tellraw](https://minecraft.fandom.com/zh/wiki/命令/tellraw)
[基岩版原始JSON文本格式](https://minecraft.fandom.com/zh/wiki/基岩版原始JSON文本格式)
[原始JSON文本格式的拓展说明]（英文）(http://wiki.bedrock.dev/commands/tellraw.html#format)

此教程同步发布于苦力怕论坛，用户im2695