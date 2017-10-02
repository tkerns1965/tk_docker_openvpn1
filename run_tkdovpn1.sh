#!/bin/bash

docker run --name cnt_tkdovpn1_easyrsa --mount src=vol_tkdovpn1_data,dst=/tkdovpn1/data \
  img_tkdovpn1_easyrsa ./build_ca.exp
