#!/bin/bash
set -e

echo "🚀 正在安装 disable-ipv6.service..."

curl -sSL https://raw.githubusercontent.com/aoqilajiao/disable-ipv6.service/main/disable-ipv6.service -o /etc/systemd/system/disable-ipv6.service
chmod 644 /etc/systemd/system/disable-ipv6.service

systemctl daemon-reexec
systemctl daemon-reload
systemctl enable --now disable-ipv6.service

echo "✅ IPv6 已禁用并设置为开机启动"

