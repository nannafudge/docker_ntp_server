#!/bin/bash

docker network create \
  --driver bridge \
  ntp_server_network

docker run \
  -v $PWD/chrony.conf:/etc/chrony/chrony.conf \
  -p 324:323/udp \
  -p 124:123/udp \
  -d \
  --name=ntp_server \
  --net=ntp_server_network \
  --privileged ntp_server
