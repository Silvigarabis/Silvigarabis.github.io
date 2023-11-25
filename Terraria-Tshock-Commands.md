# 泰拉瑞亚 Tshock 指令大全

于 2023 年 11 月 25 日 转载自[哔哩哔哩](https://www.bilibili.com/read/cv18312164/)，未获得授权。  

一些提示：
- 大部分命令并不区分大小写
- 默认的命令前缀可能是 `/` 或 `.`
- `<参数名[:类型]>` 代表指定位置需要一个参数，并指定类型
- `[参数名[:类型]]` 代表指定位置可以为该一个参数，并指定类型

## 基本

### 帮助命令 `/help`

`/help [页码]`

### 设置世界出生点 `/setspawn`

`/setspawn`

### 设置地牢位置 `/setdungeon`

`/setdungeon`

### 设置游戏时间 `/time`

`/time <时间>`
`/time <day|noon|night|midnight>`

### 设置风速 `/wind`

`/wind <风速:数字>`

### 设置单次刷怪数量 `/maxspawns`

`/maxspawns <数量>`

### 生成BOSS `/spawnboss` `/sb`

`/spawnboss <bossId>`

### 重置渔夫任务 `/clearangler`

`/clearangler`

### 设置万圣节模式 `/forcehalloween`

`/forcehalloween`

### 设置圣诞模式 `/forcexmas`

`/forcexmas`

### 改变世界类型 `/worldmode`

`/worldmode <normal|expect|master|journal>`

### 切换困难模式 `/hardmode`

`/hardmode`

### 切换上帝模式 `/godmode` `/god`

`/god [玩家]`

### 返回复活点 `/home`

`/home`

### 治疗玩家 `/heal`

`/heal <玩家> [治疗量:数字]`

### 对玩家造成伤害 `/slap`

`/slap <玩家> [伤害:数字]`

### 杀死玩家 `/kill`

`/kill <玩家>`

### 立刻复活玩家 `/respawn`

`/respawn [玩家]`

### 返回世界出生点 `/spawn`

`/spawn`

### 传送到玩家 `/tp`

`/tp <目标玩家>`
`/tp <玩家> <目标玩家>`
`/tp <所有玩家:*> <目标玩家>`

### 修改是否允许玩家传送到你 `/tpallow`

`/tpallow`

### 传送玩家到命令执行者 `/tphere`

`/tphere <玩家>`

### 传送到指定坐标 `/tppos`

`/tppos <坐标>`

### 传送到指定NPC `/tpnpc`

`/tpnpc <NPC名字>`

### 获取玩家位置（坐标） `/pos`

`/pos [玩家]`

### 生成实体NPC `/spawnmob` `/sm`

`/spawnmob <npcId> [次数]`

### 给予命令执行者物品 `/item` `/i`

`/item <物品> [数量] [前缀]`

### 给予物品 `/give` `/g`

`/give <物品> <玩家> [数量] [前缀]`

### 给予命令执行者增益/减益 `/buff`

`/buff <buffId: 增益 | 减益> <时长:数字>`

### 给予增益/减益 `/gbuff`

`/buff <玩家> <buffId: 增益 | 减益> <时长:数字>`

### 清理命令 `/clear`

`/clear <item|npc|projectile> <radius>`

### 杀死非城镇NPC实体 `/butcher`

`/butcher`
`/butcher <npcId>`

### 立刻平衡所有液体 `/settle`

`/settle`

### 重命名城镇NPC实体 `/renamenpc`

`/renamenpc <NPC: NPC名字> <新的名字>`

### 种树 `/grow`


### 世界事件设置 `/worldevent`


## 服务器

### 服务器广播消息 `/broadcast` `/bc` `/say`

`/bc [消息:文本]`

### 获取服务器信息 `/serverinfo`

`/serverinfo`

### 获取世界信息 `/worldinfo`

`/worldinfo`

### 获取版本信息 `/version`

`/version`

### 获取REST API信息 `/rest`

`/rest`

### 获取服务器更新信息 `/checkupdates`

`/checkupdates`

### 修改服务器密码 `/serverpassword`

`/serverpassword <密码:文本>`

### 重载服务器 `/reload`
- 会使重新读取 `config.json`，但不是所有选项都可以在使用该命令后生效
- 一些插件也能够使用此命令完成重载

### `/dump-reference-data`
*\*可能会导致一些问题*

`/dump-reference-data`

### `/sync`

`/sync`

### 服务器领地设置 `/region`

`/region set <1|2>`
`/region clear`
`/region define <名称>`
`/region protect <名称> <启用保护: boolean>`
`/region z <领地:领地名称> <优先级>`
`/region delete <领地:领地名称>`
`/region list [页码]`
`/region info <领地:领地名称>`
`/region rename <领地:领地名称> <新的名称>`
`/region resize <领地:领地名称> <方向:u|d|l|r> <距离:数字>`
`/region <allow|remove> <玩家> <领地:领地名称>`
`/region <allowg|removeg> <用户组> <领地:领地名称>`

### 服务器传送点设置 `/warp`

`/warp <add|del> <名称>`
`/warp hide <名称> <隐藏传送点: boolean>`
`/warp list [页码]`
`/warp send <玩家> <目标传送点>`
`/warp <目标传送点>`

### 保存世界并关闭服务器 `/off`

`/off`

### 关闭服务器（不执行保存世界的步骤） `/off-nosave`

`/off-nosave`

## 账户/玩家管理

### 账号信息查询 `/accountinfo` `/ai`

`/accountinfo <用户>`

### IP白名单 `/whitelist`

`/whitelist <IP>`

### 玩家信息查询 `/userinfo` `/ui`

`/userinfo <玩家>`

### 玩家登录 `/login`

`/login`
`/login <密码>`

### 玩家退出登录 `/logout`

`/logout`

### 玩家注册 `/register`

`/register <密码>`

### 更改登录密码 `/password`

`/password <密码>`

### 账号封禁管理 `/ban`

`/ban add <玩家> [原因:文本] [时间]`
`/ban add acc:<玩家> -e`
`/ban add ip:<IP> -e`
`/ban add uuid:<玩家UUID> -e`
`/ban del <banID>`

### 踢出在线玩家 `/kick`

`/kick <玩家>`

## 权限管理

### 用户管理 `/user`

`/user user add <玩家> <密码> <用户组>`
`/user del <玩家>`
`/user password <玩家> <密码>`
`/user group <玩家> <用户组>`

### 用户组管理 `/group`

`/group list [页码]`
`/group add <名称> [初始权限:权限]`
`/group del <用户组>`
`/group parent <用户组> <父用户组:用户组>`
`/group addperm <用户组> <权限>`
`/group delperm <用户组> <权限>`
`/group listperm <用户组>`
`/group color <用户组> <颜色: 十进制RGB值>`
~~`/group color <用户组> <新的名称:文本>`~~
`/group prefix <用户组> <聊天前缀>`
`/group suffix <用户组> <聊天后缀>`

### 临时用户组管理 `/tempgroup`

`/tempgroup <玩家> <用户组> <时间>`

### 临时权限提升 `/su`

`/su`

### 使用高级权限执行命令 `/sudo`

`/sudo <命令>`

### 物品禁用管理 `/itemban`

`/itemban <add|del> <itemId>`
`/itemban <allow|disallow> <itemId> <用户组>`
`/itemban list [页码]`

### 射弹禁用管理 `/projban`

`/projban <add|del> <projectileId>`
`/projban <allow|disallow> <projectileId> <用户组>`
`/projban list [页码]`

### 物块禁用管理 `/tileban`

`/tileban <add|del> <tileId>`
`/tileban <allow|disallow> <tileId> <用户组>`
`/tileban list [页码]`

### 切换禁止建筑功能 `/antibuild`

`/antibuild`

### 切换出生点保护功能 `/protectspawn`

`/protectspawn`

## 服务器物品数据存储（SSC）

*\*你需要先启用SSC才能使下列命令正常生效*

### `/overridessc`

`/overridessc <玩家>`

### 保存到数据库 `/savessc`

`/savessc`

### 上传数据 `/uploadssc`

`/uploadssc [玩家]`

## 聊天

### 以特殊格式在聊天中发言 `/me`

`/me <消息:文本>`

### 队内聊天 `/party` `/p`

`/party <消息:文本>`

### 向其他玩家私聊 `/whisper` `/w` `/tell`

`/w <其他玩家> <消息:文本>`

### 回复最后私聊的玩家 `/reply` `/r`

`/reply <消息:文本>`

### 切换是否允许被其他玩家发送私聊消息 `/wallow` `/wa`

`/wallow`

### 禁言玩家 `/mute`

`/mute <玩家> [原因:文本]`
~~`/mute <玩家> [时长]`~~

## 杂项

### 显示日志 `/displaylogs`

`/displaylogs`

### 查询命令别名 `/aliases`

`/aliases <命令名称>
`
### 查询在线玩家 `/playing` `/who`

`/playing`

### 查询MOTD `/motd`

`/motd`

### 查询服务器规则 `/rules`

`/rules`

### 骚扰玩家（通过播放大量声音） `/annoy`

`/annoy <玩家>`

### 将玩家发射上天 `/rocket`
*\*该命令需要启用SSC之后才能使用，否则将只会提示启用SSC。*

`/rocket <玩家>`

### 在玩家的位置展示烟花射弹 `/firework`

`/firework [玩家]`
