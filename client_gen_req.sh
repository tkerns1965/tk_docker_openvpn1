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

docker run --name cnt_tkdovpn1_client --mount src=vol_tkdovpn1_data,dst=/tkdovpn1/data --rm \
  img_tkdovpn1_client ./gen_req.exp $COMMON_NAME $PASS_PHRASE
