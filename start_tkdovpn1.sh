#!/bin/bash

docker run --name openvpn_svr --cap-add=NET_ADMIN --device=/dev/net/tun \
  -d -p 1194:1194/udp img_tkdovpn1_server
docker run --name openvpn_clt1 --cap-add=NET_ADMIN --device=/dev/net/tun \
  -d img_tkdovpn1_client1
