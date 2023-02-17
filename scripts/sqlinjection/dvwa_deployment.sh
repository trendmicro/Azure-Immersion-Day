#!/bin/bash

sudo apt update
sleep 10

###sudo apt install -y awscli

apt install -y apt-transport-https ca-certificates curl gnupg python3-pip lsb-release
sleep 60

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sleep 10
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt update
sleep 10

apt install -y docker-ce docker-ce-cli containerd.io
sleep 60

docker run --rm -it -d -p 80:80 vulnerables/web-dvwa