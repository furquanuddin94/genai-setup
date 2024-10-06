#!/bin/bash

# Step 1: Build the custom Docker image using the Dockerfile
docker build -t ollama-custom-image:latest .

# Step 2: Start the containers using Docker Compose
docker-compose up -d
