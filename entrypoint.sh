#!/bin/bash

echo "127.0.0.1 localhost localhost.localdomain $(hostname)" >> /etc/hosts

set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- apache2-foreground "$@"
fi

exec "$@"
