# Openvpn
This the configure script for openvpn. This configure script is based on the docker container. The installation script about the docker container please reference the [docker_install](https://github.com/T-tssxuan/tools/tree/master/docker)

1. Configure the openvpn docker. [configure_openvpn](vpn_openvpn/configure_openvpn.sh)
2. Start Openvpn server process. [start_openvpn_server](vpn_openvpn/start_openvpn_server.sh)
3. Create the client certification without a passphrase and retrive the certification. [gen_client](vpn_openvpn/gen_client.sh)


## About the linux config
Add the follower content to the xxx.ovpn file
```
script-security 2
up /etc/openvpn/update-resolv-conf
down /etc/openvpn/update-resolv-conf
```

Using the command `openvpn --config` to start the openvpn
