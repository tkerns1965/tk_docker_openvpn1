#!/bin/bash

PASS_PHRASE=$1
COMMON_NAME=$2

if [ -z "$PASS_PHRASE" ]; then
  echo "No pass phrase specified."
  exit 1
elif [ -z "$COMMON_NAME" ]; then
  echo "No common name specified."
  exit 1
fi

docker run --name cnt_tkdovpn1_easyrsa --mount src=vol_tkdovpn1_data,dst=/tkdovpn1/data \
  img_tkdovpn1_easyrsa ./build_ca.exp $PASS_PHRASE $COMMON_NAME
