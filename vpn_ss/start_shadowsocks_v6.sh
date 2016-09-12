PORT=$1
PASSWORD=$2
echo "port: $PORT, PASSWORD: $PASSWORD, encrypt: aes-256-cfb" >> v6_profile
docker run -d -p $PORT:$PORT oddrationale/docker-shadowsocks -s "::" -p $PORT -k $PASSWORD -m aes-256-cfb
