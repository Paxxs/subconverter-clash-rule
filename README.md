# 订阅

## PC & Android:

> CFW 建议使用 mixin 混合配置来动态启动 TUN

```yml
tun:
  enable: true
  stack: gvisor # only gvisor
  dns-hijack:
    - 8.8.8.8:53
    - 1.0.0.1:53
    - 198.18.0.2:53 # when `fake-ip-range` is 198.18.0.1/16, should hijack 198.18.0.2:53
  macOS-auto-route: true # auto set global route for Windows
  macOS-auto-detect-interface: true # 自动检测出口网卡
```

```
https://域名/sub?target=clash&url=訂閲&new_name=true&config=https%3a%2f%2fraw.githubusercontent.com%2fPaxxs%2fsubconverter-clash-rule%2fmain%2fACL4SSR_Online_Full_AdblockPlus.ini
```

### TUN 模式

```
https://域名/sub?target=clash&url=訂閲&new_name=true&config=https%3a%2f%2fraw.githubusercontent.com%2fPaxxs%2fsubconverter-clash-rule%2fmain%2fACL4SSR_Online_Full_AdblockPlus_tun.ini
```

## Dustbin:

### Web 界面

- [yacd](http://yacd.haishan.me/)
- [Clash](http://clash.razord.top/#/proxies)

填写 `ip:9090` 直接连接即可

或者下载静态资源放置配置文件目录下的 `ui` 目录


> 全开启了 TUN

- [clash installer](https://github.com/Paxxs/clash-premium-installer)

### redir-host

```shell
https://域名/sub?target=clash&url=訂閲&new_name=true&config=https%3A%2F%2Fraw.githubusercontent.com%2FPaxxs%2Fsubconverter-clash-rule%2Fmain%2Fdusbin.ini
```

### fake-ip

```shell
https://域名/sub?target=clash&url=訂閲&new_name=true&config=https%3a%2f%2fraw.githubusercontent.com%2fPaxxs%2fsubconverter-clash-rule%2fmain%2fdusbin_fake-ip.ini
```

# 一些有用的链接

- [clash-premium-installer](https://github.com/Kr328/clash-premium-installer)
- [ACL4SSR](https://github.com/ACL4SSR/ACL4SSR/tree/master)
- [Clash gitbook](https://lancellc.gitbook.io/clash/)