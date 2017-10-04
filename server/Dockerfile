FROM img_tkdovpn1_openvpn_base:latest

COPY run_server.exp ./
COPY server.conf ./etc/openvpn/

RUN chmod u+x run_server.exp \
        && ln -s /etc/easyrsa/ /etc/openvpn/
