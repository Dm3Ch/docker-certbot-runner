#!/bin/bash

echo "Building image:"
echo ""
docker build ../ -t dm3ch/certbot-runner:latest
