#!/bin/bash
# 备份旧的
CONFIGDIR="/srv/clash"
TIME=`date '+%Y-%m-%d %H:%M:%S'`
echo "===${TIME} - 更新订阅==="
echo ":: 备份订阅：config.yaml.bak.${TIME}"
cp ${CONFIGDIR}/config.yaml "${CONFIGDIR}/config.yaml.bak.${TIME}"

# 下载新的
echo ":: 下载订阅"
wget "https://网址/sub?target=clash&url=订阅&new_name=true&config=https%3A%2F%2Fraw.githubusercontent.com%2FPaxxs%2Fsubconverter-clash-rule%2Fmain%2Fdusbin.ini" -O /srv/clash/config.yaml

# 重启 clash
# 无需sudo运行命令：
# 放到最下面 sudo EDITOR=nvim visudo
# rick ALL=NOPASSWD: /bin/systemctl restart clash.service, /usr/bin/systemctl restart clash.service
echo ":: 重启服务"
sudo systemctl restart clash.service

sleep 10
echo ":: 查看服务状态"
systemctl status clash.service
