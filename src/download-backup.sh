#!/usr/bin/env ash

set -euox pipefail

if [ -z "$OPNSENSE_USER_KEY" ]; then
  echo "ERROR: User key was not provided."
  exit 1
fi

if [ -z "$OPNSENSE_USER_SECRET" ]; then
  echo "ERROR: User secret was not provided."
  exit 1
fi

if [ -z "$OPNSENSE_DOMAIN" ]; then
  echo "ERROR: Domain for opnsense was not provided."
  exit 1
fi

DATETIME=$(date +%Y%m%d-%H%M%S)
curl -u "${OPNSENSE_USER_KEY}:${OPNSENSE_USER_SECRET}" \
  "https://${OPNSENSE_DOMAIN}/api/core/backup/download/this" \
  -o "/config/${DATETIME}-${OPNSENSE_DOMAIN}-backup.xml"