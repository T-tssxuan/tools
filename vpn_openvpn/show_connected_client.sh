#!/bin/bash
if [ $# -eq 0]
then
    echo 'show_connected_client.sh container_id'
elif
    docker exec -it $1 /bin/cat /tmp/openvpn-status.log
fi
