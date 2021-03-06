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

docker run --mount src=vol_ca_pki,dst=/etc/easyrsa/pki --rm \
  img_tkdovpn1_easyrsa ./build_ca.exp $COMMON_NAME $PASS_PHRASE
