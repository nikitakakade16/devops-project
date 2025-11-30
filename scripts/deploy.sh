#!/bin/bash
set -e
cd /home/ec2-user/my-node-app || true
aws ecr get-login-password --region us-east-1 \
 | docker login --username AWS --password-stdin 200901485389.dkr.ecr.us-east-1.amazonaws.com
docker stop my-node-app || true
docker rm -f my-node-app || true
docker pull 200901485389.dkr.ecr.us-east-1.amazonaws.com/nikita-ecr-deep:latest
docker run -p 80:3000 --name my-node-app -d 200901485389.dkr.ecr.us-east-1.amazonaws.com/nikita-ecr-deep:latest
echo "Deployment Successful!"
