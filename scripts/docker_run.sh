#!/bin/bash

# Stop old container
docker stop myapp || true
docker rm myapp || true

# Login to ECR (replace REGION & ACCOUNT_ID with env variables in script or fetch dynamically)
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 558342860244.dkr.ecr.ap-south-1.amazonaws.com

# Pull latest image
docker pull 558342860244.dkr.ecr.ap-south-1.amazonaws.com/my-java-app:latest

# Run new container
docker run -d --name myapp -p 80:8080 558342860244.dkr.ecr.ap-south-1.amazonaws.com/my-java-app:latest
