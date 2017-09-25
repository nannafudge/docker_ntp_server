#!/bin/bash

docker stop ntp_server
docker rm ntp_server
docker rmi ntp_server
docker network rm ntp_server_network
