# 泰拉瑞亚 Tshock 指令大全

于 2023 年 11 月 25 日 转载自[哔哩哔哩](https://www.bilibili.com/read/cv18312164/)，未获得授权。  

一些提示：
- 大部分命令并不区分大小写
- 默认的命令前缀可能是 `/` 或 `.`
- <参数名[;类型]> 代表指定位置需要一个参数，并指定类型
- [参数名[;类型]] 代表指定位置可以为该一个参数，并指定类型

# 基本

<details><summary>
帮助命令 `/help`
</summary>
</details>

<details><summary>
设置世界出生点 `/setspawn`
</summary>
</details>

<details><summary>
设置地牢位置 `/setdungeon`
</summary>
</details>

<details><summary>
设置游戏时间 `/time`
</summary>
</details>

<details><summary>
设置风速 `/wind`
</summary>
</details>

<details><summary>
设置单次刷怪数量 `/maxspawns`
</summary>
</details>

<details><summary>
生成BOSS `/spawnboss` `/sb`
</summary>
</details>

<details><summary>
重置渔夫任务 `/clearangler`
</summary>
</details>

<details><summary>
设置万圣节模式 `/forcehalloween`
</summary>
</details>

<details><summary>
设置圣诞模式 `/forcexmas`
</summary>
</details>

<details><summary>
改变世界类型 `/worldmode`
</summary>
</details>

<details><summary>
切换困难模式 `/hardmode`
</summary>
</details>

<details><summary>
切换上帝模式 `/godmode` `/god`
</summary>
</details>

<details><summary>
返回复活点 `/home`
</summary>
</details>

<details><summary>
治疗玩家 `/heal`
</summary>
</details>

<details><summary>
对玩家造成伤害 `/damage`
</summary>
</details>

<details><summary>
杀死玩家 `/kill`
</summary>
</details>

<details><summary>
立刻复活玩家 `/respawn`
</summary>
</details>

<details><summary>
返回世界出生点 `/spawn`
</summary>
</details>

<details><summary>
传送到玩家 `/tp`
</summary>
</details>

<details><summary>
修改是否允许玩家传送到你 `/tpallow`
</summary>
</details>

<details><summary>
传送玩家到命令执行者 `/tphere`
</summary>
</details>

<details><summary>
获取玩家位置（坐标） `/pos`
</summary>
</details>

<details><summary>
生成实体NPC `/spawnmob` `/sm`
</summary>
</details>

<details><summary>
给予命令执行者物品 `/item` `/i`
</summary>
</details>

<details><summary>
给予物品 `/give` `/g`
</summary>
</details>

<details><summary>
给予命令执行者增益/减益 `/buff`
</summary>
</details>

<details><summary>
给予增益/减益 `/gbuff`
</summary>
</details>

<details><summary>
清理命令 `/clear`
</summary>
</details>

<details><summary>
杀死非城镇NPC实体 `/butcher`
</summary>
</details>

<details><summary>
立刻平衡所有液体 `/settle`
</summary>
</details>

<details><summary>
重命名城镇NPC实体 `/renamenpc`
</summary>
</details>

<details><summary>
种树 `/grow`
</summary>
</details>

<details><summary>
世界事件设置 `/worldevent`
</summary>
</details>

# 服务器

<details><summary>
服务器广播消息 `/broadcast` `/bc` `/say`
</summary>
</details>

<details><summary>
获取服务器信息 `/serverinfo`
</summary>
</details>

<details><summary>
获取世界信息 `/worldinfo`
</summary>
</details>

<details><summary>
获取版本信息 `/version`
</summary>
</details>

<details><summary>
修改服务器密码 `/serverpassword`
</summary>
</details>

<details><summary>
获取服务器更新信息 `/checkupdates`
</summary>
</details>

<details><summary>
重载服务器 `/reload`
</summary>
- 会使重新读取 `config.json`，但不是所有选项都可以在使用该命令后生效  
- 一些插件也能够使用此命令完成重载
</details>

<details><summary>
`/dump-reference-data`
</summary>
</details>

<details><summary>
`/sync`
</summary>
</details>

<details><summary>
服务器领地设置 `/region`
</summary>
</details>

<details><summary>
服务器传送点设置 `/warp`
</summary>
</details>

<details><summary>
保存世界并关闭服务器 `/off`
</summary>
</details>

<details><summary>
关闭服务器（不执行保存世界的步骤） `/off-nosave`
</summary>
</details>

# 账户/玩家管理

<details><summary>
账号信息查询 `/accountinfo` `/ai`
</summary>
</details>

<details><summary>
IP白名单 `/whitelist`
</summary>
</details>

<details><summary>
玩家信息查询 `/userinfo` `/ui`
</summary>
</details>

<details><summary>
玩家登录 `/login`
</summary>
</details>

<details><summary>
玩家退出登录 `/logout`
</summary>
</details>

<details><summary>
玩家注册 `/register`
</summary>
</details>

<details><summary>
更改登录密码 `/password`
</summary>
</details>

<details><summary>
账号封禁管理 `/ban`
</summary>
</details>

<details><summary>
踢出在线玩家 `/kick`
</summary>
</details>

# 权限管理

<details><summary>
用户管理 `/user`
</summary>
</details>

<details><summary>
用户组管理 `/group`
</summary>
</details>

<details><summary>
临时用户组管理 `/group`
</summary>
</details>

<details><summary>
临时权限提升 `/su`
</summary>
</details>

<details><summary>
使用高级权限执行命令 `/sudo`
</summary>
</details>

<details><summary>
物品禁用管理 `/itemban`
</summary>
</details>

<details><summary>
射弹禁用管理 `/projban`
</summary>
</details>

<details><summary>
物块禁用管理 `/tileban`
</summary>
</details>

<details><summary>
切换禁止建筑功能 `/antibuild`
</summary>
</details>

<details><summary>
切换出生点保护功能 `/protectspawn`
</summary>
</details>

# 服务器物品数据存储（SSC）

*\*你需要先启用SSC才能使下列命令正常生效*

<details><summary>
`/overridessc`
</summary>
</details>

<details><summary>
保存到数据库 `/savessc`
</summary>
</details>

<details><summary>
上传数据 `/uploadssc`
</summary>
</details>

# 聊天

<details><summary>
以特殊格式在聊天中发言 `/me`
</summary>
</details>

<details><summary>
队内聊天 `/party` `/p`
</summary>
</details>

<details><summary>
向其他玩家私聊 `/whisper` `/w` `/tell`
</summary>
</details>

<details><summary>
回复最后私聊的玩家 `/reply` `/r`
</summary>
</details>

<details><summary>
切换是否允许被其他玩家发送私聊消息 `/wallow` `/wa`
</summary>
</details>

<details><summary>
禁言玩家 `/mute`
</summary>
</details>

# 杂项

<details><summary>
显示日志 `/displaylogs`
</summary>
</details>

<details><summary>
查询命令别名 `/aliases`
</summary>
</details>

<details><summary>
查询在线玩家 `/playing` `/who`
</summary>
</details>

<details><summary>
查询MOTD `/motd`
</summary>
</details>

<details><summary>
查询服务器规则 `/rules`
</summary>
</details>

<details><summary>
骚扰玩家（通过播放大量声音） `/annoy`
</summary>
</details>

<details><summary>
将玩家发射上天 `/rocket`
</summary>
*\*该命令需要启用SSC之后才能使用，否则将只会提示启用SSC。*
</details>

<details><summary>
在玩家的位置展示烟花射弹 `/firework`
</summary>
</details>
