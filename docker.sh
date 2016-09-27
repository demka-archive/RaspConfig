#!/bin/bash
CID=$(docker run -d --restart=always --privileged -p 1194:1194/udp -p 443:443/tcp umputun/dockvpn)
docker run -t -i -p 8080:8080 --volumes-from $CID umputun/dockvpn serveconfig