#/bin/sh
#for debian

DIR=~/shadowsocks/shadowsocks

apt-get install m2crypto git vim screen -y
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git

cat <<EOF > /etc/shadowsocks.json
{
    "server": "116.251.209.73",
    "server_ipv6": "::",
    "server_port": 80,
    "local_address": "127.0.0.1",
    "local_port": 1080,
    "password": "uEVvMvE29Lxo6XsRDWdB2UMc",
    "timeout": 120,
    "method": "aes-256-cfb",
    "protocol": "verify_simple",
    "protocol_param": "",
    "obfs": "http_simple",
    "obfs_param": "",
    "redirect": "baidu.com",
    "dns_ipv6": false,
    "fast_open": false,
    "workers": 1
}
EOF
