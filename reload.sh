#!/usr/bin/env bash

source .env/bin/activate
pip freeze | grep -v pkg-resources > requirements.txt

docker build -t galley .
docker-compose up -d --remove-orphans