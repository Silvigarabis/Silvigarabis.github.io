# 泰拉瑞亚 Tshock 指令大全

于 2023 年 11 月 25 日 转载自[哔哩哔哩](https://www.bilibili.com/read/cv18312164/)，未获得授权。  

一些提示：
- 大部分命令并不区分大小写
- 默认的命令前缀可能是 `/` 或 `.`
- `<参数名[;类型]>` 代表指定位置需要一个参数，并指定类型
- `[参数名[;类型]]` 代表指定位置可以为该一个参数，并指定类型

## 基本

### 帮助命令 `/help`


### 设置世界出生点 `/setspawn`


### 设置地牢位置 `/setdungeon`


### 设置游戏时间 `/time`


### 设置风速 `/wind`


### 设置单次刷怪数量 `/maxspawns`


### 生成BOSS `/spawnboss` `/sb`


### 重置渔夫任务 `/clearangler`


### 设置万圣节模式 `/forcehalloween`


### 设置圣诞模式 `/forcexmas`


### 改变世界类型 `/worldmode`


### 切换困难模式 `/hardmode`


### 切换上帝模式 `/godmode` `/god`


### 返回复活点 `/home`


### 治疗玩家 `/heal`


### 对玩家造成伤害 `/damage`


### 杀死玩家 `/kill`


### 立刻复活玩家 `/respawn`


### 返回世界出生点 `/spawn`


### 传送到玩家 `/tp`


### 修改是否允许玩家传送到你 `/tpallow`


### 传送玩家到命令执行者 `/tphere`


### 获取玩家位置（坐标） `/pos`


### 生成实体NPC `/spawnmob` `/sm`


### 给予命令执行者物品 `/item` `/i`


### 给予物品 `/give` `/g`


### 给予命令执行者增益/减益 `/buff`


### 给予增益/减益 `/gbuff`


### 清理命令 `/clear`


### 杀死非城镇NPC实体 `/butcher`


### 立刻平衡所有液体 `/settle`


### 重命名城镇NPC实体 `/renamenpc`


### 种树 `/grow`


### 世界事件设置 `/worldevent`


## 服务器

### 服务器广播消息 `/broadcast` `/bc` `/say`


### 获取服务器信息 `/serverinfo`


### 获取世界信息 `/worldinfo`


### 获取版本信息 `/version`


### 修改服务器密码 `/serverpassword`


### 获取服务器更新信息 `/checkupdates`


### 重载服务器 `/reload`
- 会使重新读取 `config.json`，但不是所有选项都可以在使用该命令后生效
- 一些插件也能够使用此命令完成重载

### `/dump-reference-data`


### `/sync`


### 服务器领地设置 `/region`


### 服务器传送点设置 `/warp`


### 保存世界并关闭服务器 `/off`


### 关闭服务器（不执行保存世界的步骤） `/off-nosave`


## 账户/玩家管理

### 账号信息查询 `/accountinfo` `/ai`


### IP白名单 `/whitelist`


### 玩家信息查询 `/userinfo` `/ui`


### 玩家登录 `/login`


### 玩家退出登录 `/logout`


### 玩家注册 `/register`


### 更改登录密码 `/password`


### 账号封禁管理 `/ban`


### 踢出在线玩家 `/kick`


## 权限管理

### 用户管理 `/user`


### 用户组管理 `/group`


### 临时用户组管理 `/group`


### 临时权限提升 `/su`


### 使用高级权限执行命令 `/sudo`


### 物品禁用管理 `/itemban`


### 射弹禁用管理 `/projban`


### 物块禁用管理 `/tileban`


### 切换禁止建筑功能 `/antibuild`


### 切换出生点保护功能 `/protectspawn`


## 服务器物品数据存储（SSC）

*\*你需要先启用SSC才能使下列命令正常生效*

### `/overridessc`


### 保存到数据库 `/savessc`


### 上传数据 `/uploadssc`


## 聊天

### 以特殊格式在聊天中发言 `/me`


### 队内聊天 `/party` `/p`


### 向其他玩家私聊 `/whisper` `/w` `/tell`


### 回复最后私聊的玩家 `/reply` `/r`


### 切换是否允许被其他玩家发送私聊消息 `/wallow` `/wa`


### 禁言玩家 `/mute`


## 杂项

### 显示日志 `/displaylogs`


### 查询命令别名 `/aliases`


### 查询在线玩家 `/playing` `/who`


### 查询MOTD `/motd`


### 查询服务器规则 `/rules`


### 骚扰玩家（通过播放大量声音） `/annoy`


### 将玩家发射上天 `/rocket`
*\*该命令需要启用SSC之后才能使用，否则将只会提示启用SSC。*

### 在玩家的位置展示烟花射弹 `/firework`

