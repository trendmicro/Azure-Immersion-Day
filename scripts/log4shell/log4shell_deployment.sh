#!/bin/bash
sudo apt update -y
sudo apt install -y git apt-transport-https ca-certificates curl gnupg python3-pip lsb-release unzip
sleep 20
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sleep 10
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
sleep 10
sudo apt install -y docker-ce docker-ce-cli containerd.io
sleep 10
sudo service docker start
sudo apt install -y openjdk-11-jdk
cd home/aiwadmin
git clone https://github.com/christophetd/log4shell-vulnerable-app.git
wget https://aiwcustomscripts.blob.core.windows.net/log4shell/JNDIExploit.v1.2.zip
cd log4shell-vulnerable-app
sudo docker build . -t vulnerable-app
docker run --rm -it -d -p 8080:8080 --name vulnerable-app vulnerable-app