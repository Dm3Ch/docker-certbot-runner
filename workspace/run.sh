#!/bin/bash

echo "Running container:"
echo ""
docker run -ti \
	--publish 80:80 \
	--volume `pwd`/volumes/storage:/mnt/storage \
	--volume `pwd`/volumes/letsencrypt:/etc/letsencrypt \
	--env CONFIG_PATH='/mnt/storage/config.yaml' \
	dm3ch/certbot-runner:latest