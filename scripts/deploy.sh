#!/bin/bash
cd /home/ec2-user/my-node-app
docker rm -f my-node-app
docker pull 045291957223.dkr.ecr.ap-south-1.amazonaws.com/node-app:latest
docker run -p 80:3000 --name my-node-app -d 045291957223.dkr.ecr.ap-south-1.amazonaws.com/node-app:latest
