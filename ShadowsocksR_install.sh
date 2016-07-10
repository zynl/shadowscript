#/bin/sh
#for debian

DIR=~/shadowsocks/shadowsocks

apt-get install m2crypto git vim screen -y
git clone -b manyuser https://github.com/breakwa11/shadowsocks.git

python DIR/server.py -c /etc/shadowsocks.json -d start

#after restart server
sudo service apache2 stop
python ~/shadowsocks/shadowsocks/server.py -c /etc/shadowsocks.json -d start
screen
cd net_speeder
./net_speeder venet0 "ip" 2>&1 >/dev/null
