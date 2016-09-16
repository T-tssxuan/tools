OVPN_DATA="open-data"
docker run -v $OVPN_DATA:/etc/openvpn -d -p 21000:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
