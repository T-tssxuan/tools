OVPN_DATA="open-data"
# note you should specify it with udp and the port in your client certification
docker run -v $OVPN_DATA:/etc/openvpn -d -p 21000:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
