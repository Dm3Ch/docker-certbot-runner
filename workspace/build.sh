#!/bin/bash

./clean.sh
echo "Building image:"
echo ""
docker build ../ -t dm3ch/certbot-runner:latest
