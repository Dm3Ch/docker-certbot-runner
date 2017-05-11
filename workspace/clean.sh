#!/bin/bash

echo "Cleaning workspace"
sudo chown dm3ch:dm3ch -R ../

if [ -d "volumes/storage" ]; then
	rm -rf volumes/storage/certs
fi

if [ -d "volumes/letsencrypt" ]; then
	rm -rf volumes/letsencrypt/*
fi