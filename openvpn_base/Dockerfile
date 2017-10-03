FROM img_tkdovpn1_easyrsa_base:latest

COPY gen_req.exp ./
RUN chmod u+x gen_req.exp \
        && wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg | apt-key add - \
        && echo "deb http://build.openvpn.net/debian/openvpn/release/2.4 xenial main" > /etc/apt/sources.list.d/openvpn-aptrepo.list \
        && apt update \
        && apt install -y openvpn
