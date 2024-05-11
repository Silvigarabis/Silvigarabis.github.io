# Linux firewall-cmd 命令教程

firewalld 介绍（摘自[维基百科](https://zh.wikipedia.org/zh-cn/Firewalld)）
> firewalld 是一款动态防火墙管理器。
> firewalld 通过“网络/防火墙”空间的方式，为不同的网络连线或接口定义其自身的信任等级，
> 通过这种方式达到了动态管理的效果。同时，它支持IPv4、IPv6 防火墙的设置、
> 以太网网桥以及配置选项可为运行时或永久。另外，它还提供了接口，方便应用添加规则。

在这里我们要讲的是他的命令行管理工具，`firewall-cmd`的用法。

在使用之前，请确保系统上的 firewalld 正在运行，使用 `systemctl status firewalld` 查看状态
```
# systemctl status firewalld
● firewalld.service - firewalld - dynamic firewall daemon
     Loaded: loaded (/usr/lib/systemd/system/firewalld.service; enabled; preset: enabled)
    Drop-In: /usr/lib/systemd/system/service.d
             └─10-timeout-abort.conf
     Active: active (running) since Fri 2024-05-03 13:05:07 CST; 1 week 1 day ago
       Docs: man:firewalld(1)
   Main PID: 917 (firewalld)
      Tasks: 4 (limit: 18858)
     Memory: 43.8M
        CPU: 4min 58.011s
     CGroup: /system.slice/firewalld.service
             └─917 /usr/bin/python3 -sP /usr/sbin/firewalld --nofork --nopid
```

在操作过程中，应该使用 root 用户执行。
```
[user@localhost ~]$ sudo -i
[sudo] user 的密码：
[root@localhost ~]#
```

# 基本操作

在基本操作教程当中，我们只会对防火墙的默认区域进行操作，而不会去接触其他区域或者接口。

你可能想知道目前防火墙的默认区域，虽然这对于我们目前的基本操作教程来说并没有什么用
```
firewall-cmd --get-default-zone
```

好的，正式开始基本操作教程。我们首先使用`firewall-cmd --list-all`查看当前的防火墙信息。

这里是在我的机器上执行的结果：
```
[root@localhost ~]# firewall-cmd --list-all
public (active)
  target: default
  icmp-block-inversion: no
  interfaces: enp1s0 enp2s0 virbr0
  sources:
  services: AdguardHome https dhcpv6-client mcsm-services mdns ms-kms
  ports: 25565/tcp 8077/tcp 38222/tcp 8125/tcp 42237/tcp 7777/tcp 5000/tcp 5001/tcp 15538/tcp
  protocols:
  forward: yes
  masquerade: yes
  forward-ports:
  source-ports:
  icmp-blocks:
  rich rules:
        rule family="ipv4" source address="192.168.250.0/24" accept
```

你可能看到了非常多的信息，这是因为防火墙有着很多不同的配置项目。

第一行的输出的内容是`public (active)`，这意味着目前显示的是`public`区域的信息，后方的`(active)`表示这个区域处于活跃状态。

## 区域目标

上方输出中的第二行，`target: default`，这告诉我们这个区域当前的目标是`default`，
注意这**不是**意味着这个区域是默认区域，区域的目标与防火墙默认区域配置没有关系。

对于区域，有着4个可以设置的目标，但是实际上只有三种效果：
`ACCEPT`
: 接受所有流量

`REJECT`
: 拒绝所有流量

`DROP`
: 丢弃所有流量

`default`
: 拒绝所有流量（与`REJECT`相同）

其中，*接受*即让来源流量直接进入，而不加拦截。
*拒绝*即拦截来源流量，并向远端返回类似“被拒绝访问”的消息。
*丢弃*即拦截来源流量，且不通知远端。

可以使用命令`firewall-cmd --permanent --set-target=<目标>`来修改区域目标，
注意修改区域目标后必须重载防火墙（使用`firewall-cmd --reload`）。
```
[root@localhost ~]# firewall-cmd --permanent --set-target=ACCEPT
success
[root@localhost ~]# firewall-cmd --reload
success
[root@localhost ~]# firewall-cmd --list-all
public (active)
  target: ACCEPT
  icmp-block-inversion: no
  interfaces: enp1s0 enp2s0 virbr0
  sources:
  services: AdguardHome https dhcpv6-client mcsm-services mdns ms-kms
  ports: 25565/tcp 8077/tcp 38222/tcp 8125/tcp 42237/tcp 7777/tcp 5000/tcp 5001/tcp 15538/tcp
  protocols:
  forward: yes
  masquerade: yes
  forward-ports:
  source-ports:
  icmp-blocks:
  rich rules:
        rule family="ipv4" source address="192.168.250.0/24" accept
```

你也可以使用命令`firewall-cmd --permanent --get-target`来直接获取当前区域的目标
```
[root@localhost ~]# firewall-cmd --permanent --get-target
ACCEPT
```

# 更新中……请不要着急……

预计下次更新于5月20日
