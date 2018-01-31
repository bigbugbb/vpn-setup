#!/bin/sh

sudo -s
apt-get update
apt-get install python-pip -y
pip install shadowsocks

echo '{
"server":"0.0.0.0",
"server_port": 8388,
"local_address":"127.0.0.1",
"local_port":1080,
"password":"(fuck-gfw-4-ever)",
"timeout":300,
"method":"aes-256-cfb",
"fast_open":false
}' >> /etc/shadowsocks.json

ssserver -c /etc/shadowsocks.json -d start

