#!/bin/bash

cd ./easyrsa_base/
docker build -t img_tkdovpn1_easyrsa_base .
cd ../openvpn_base/
docker build -t img_tkdovpn1_openvpn_base .
cd ../easyrsa/
docker build -t img_tkdovpn1_easyrsa .
cd ../server/
docker build -t img_tkdovpn1_server .
cd ../client/
docker build -t img_tkdovpn1_client .
cd ../

docker network create net_tkdovpn1_bridge
