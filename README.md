
配置用户权限：

```shell
sudo EDITOR=nvim visudo
---
rick ALL=NOPASSWD: /bin/systemctl restart clash.service, /usr/bin/systemctl restart clash.service
```

设定定时任务：

```shell
env EDITOR=nvim crontab -e
---
30 6 * * 1-5 bash /srv/clash/update.sh >> /srv/clash/updatelog/my.log 2>&1
```

没弄错的话，周一至周五的六点半会更新订阅