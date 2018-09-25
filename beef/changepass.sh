#!/usr/bin/env bash

export BEEFPASS:=$(dd if=/dev/urandom bs=1 count=15 | base64)
sed -i 's/passwd: "beef"/passwd: "'$BEEFPASS'"/' config.yaml
