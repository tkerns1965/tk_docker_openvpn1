#!/bin/bash

docker run -d --name openvpn_svr --network net_tkdovpn1_bridge \
  --cap-add=NET_ADMIN --device=/dev/net/tun -p 1194:1194/udp \
  --entrypoint "openvpn --cd /etc/openvpn/ --config server.conf" \
  img_tkdovpn1_server
docker run -d --name openvpn_clt1 --network net_tkdovpn1_bridge \
  --cap-add=NET_ADMIN --device=/dev/net/tun \
  --entrypoint "openvpn --cd /etc/openvpn/ --config client.conf" \
  img_tkdovpn1_client
