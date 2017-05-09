#!/bin/sh

if [ ! -d "/mnt/storage/certs" ]; then
	echo "Creating /mnt/storage/certs"
	mkdir /mnt/storage/certs
fi

python3 /root/certbot-runner/certbot-runner.py $CONFIG_PATH