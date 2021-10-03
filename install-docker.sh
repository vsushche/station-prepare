#!/bin/bash
set -e
echo "Remove the previous version"
yum remove -y docker \
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
rm -rf /var/lib/docker /var/lib/containerd /etc/docker
echo "Download and run installation script"
curl -fsSL https://get.docker.com | sh
echo "Enable autostart"
systemctl enable docker.service
systemctl enable containerd.service
echo "Start Docker service"
sleep 1
until systemctl start docker
do
    echo "Wait 10s"
    sleep 10
done
echo "Run a test image"
docker run --rm hello-world
