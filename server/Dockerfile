FROM img_tkdovpn1_openvpn_base:latest

COPY run_server.exp ./
COPY server.conf ./etc/openvpn/

RUN ln -s /etc/easyrsa/ /etc/openvpn/
