#!/bin/bash
#for CentOS 7
yum check-update
yum install epel-release -y
yum install sudo curl wget nano nload htop -y
wget -O screenfetch 'https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev'
chmod +x screenfetch
sudo mv screenfetch /usr/bin/
curl -fsSL https://get.docker.com/ | sh
sudo systemctl start docker
CID=$(docker run -d --restart=always --privileged -p 1194:1194/udp -p 443:443/tcp umputun/dockvpn)
docker run -t -i -p 8080:8080 --volumes-from $CID umputun/dockvpn serveconfig