#!/bin/bash
set -e
echo "Remove the previous version"
sudo yum remove -y docker \
    docker-client \
    docker-client-latest \
    docker-common \
    docker-latest \
    docker-latest-logrotate \
    docker-logrotate \
    docker-engine \
    podman \
    runc \
    docker-ce docker-ce-cli
echo "Remove images"
sudo rm -rf /var/lib/docker /var/lib/containerd /etc/docker
echo "Download and run installation script"
curl -fsSL https://get.docker.com | sh
echo "Make managing Docker by a non-root user"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
echo "Enable autostart"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
echo "Start Docker service"
sleep 1
until sudo systemctl start docker
do
    echo "Wait 10s"
    sleep 10
done
echo "Run a test image"
docker run --rm hello-world
