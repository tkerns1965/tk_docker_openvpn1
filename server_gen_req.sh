#!/bin/bash

COMMON_NAME=$1
PASS_PHRASE=$2

if [ -z "$COMMON_NAME" ]; then
  echo "No common name specified."
  exit 1
elif [ -z "$PASS_PHRASE" ]; then
  echo "No pass phrase specified."
  exit 1
fi

docker run --name cnt_tkdovpn1_server --mount src=vol_server_pki,dst=/etc/easyrsa/pki --rm \
  img_tkdovpn1_server ./gen_req.exp $COMMON_NAME $PASS_PHRASE
