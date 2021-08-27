#!/bin/bash

echo '# docker --version'
docker --version
echo '# docker-compose --version'
docker-compose --version

VERSION=1.29.2
sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}-rc3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

