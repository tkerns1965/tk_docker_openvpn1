#!/bin/bash

docker volume create vol_tkdovpn1_certs
cd ./base/
docker build -t img_tkdovpn1_base .
cd ./easyrsa/
docker build -t img_tkdovpn1_easyrsa .
cd ../server/
docker build -t img_tkdovpn1_server .
cd ../client/
docker build -t img_tkdovpn1_client .
cd ../
