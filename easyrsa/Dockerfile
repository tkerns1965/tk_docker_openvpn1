FROM img_tkdovpn1_easyrsa_base:latest

COPY *.exp ./
RUN chmod u+x *.exp \
        && cd /etc/easyrsa/ \
        && ./easyrsa gen-dh
