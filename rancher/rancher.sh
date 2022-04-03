#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
sudo usermod -aG docker administrador
docker run -d --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  --privileged \
  -v /opt/rancher:/var/lib/rancher \
  rancher/rancher:stable

  # --no-cacerts #. Precicei deste comando no loadbalancer da AWS

