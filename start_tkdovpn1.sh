#!/bin/bash

docker run -d --name openvpn_svr --network net_tkdovpn1_bridge \
  --mount src=vol_server_pki,dst=/etc/easyrsa/pki \
  --cap-add=NET_ADMIN --device=/dev/net/tun -p 1194:1194/udp \
  img_tkdovpn1_server ./run_server.exp

# docker run -d --name openvpn_clt1 --network net_tkdovpn1_bridge \
  # --mount src=vol_client_pki,dst=/etc/easyrsa/pki \
  # --cap-add=NET_ADMIN --device=/dev/net/tun \
  # --entrypoint "openvpn --cd /etc/openvpn/ --config client.conf" \
  # img_tkdovpn1_client
