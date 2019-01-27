#!/bin/bash

ufw allow OpenSSH
ufw allow http
ufw allow 4000
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 4000
ufw --force enable

apt update

apt -y install docker.io
apt -y install docker-compose

ssh-keyscan github.com >> ~/.ssh/known_hosts
git clone git@github.com:jimmay5469/docker-test.git ~/apps/docker-test
