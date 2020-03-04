#!/bin/bash

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;93m'
NC='\033[0m'

source "../.env"

DOMAIN=$(echo "$DOMAIN")

rm -rf ../certs/*
mkdir -p ../certs
mv *.pem ../certs

mkcert ${DOMAIN}

echo -e ${GREEN}"Cert created in /cert! ${NC}"