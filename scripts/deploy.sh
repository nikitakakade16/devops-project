#!/bin/bash
cd /home/ec2-user/my-node-app
docker stop my-node-app
docker rm -f my-node-app
docker pull 200901485389.dkr.ecr.us-east-1.amazonaws.com/nikita-ecr-deep:latest
docker run -p 80:3000 --name my-node-app -d 200901485389.dkr.ecr.us-east-1.amazonaws.com/nikita-ecr-deep:latest
