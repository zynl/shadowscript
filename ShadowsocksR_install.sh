#/bin/sh
#for debian

DIR=~/shadowsocks/shadowsocks

apt-get install m2crypto git vim screen -y
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git

python DIR/server.py -c /etc/shadowsocks.json -d start
