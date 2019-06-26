#!/usr/bin/env bash

set -xe
rm -rf ./build/
mkdir -p ./build
./scripts/generate_font.py ./config.json > ./build/mapping.txt
chmod +x ./build/icons_bash.sh
mv icons-in-terminal.ttf ./build/
set +xe
echo -e "\nEverything seems good"
