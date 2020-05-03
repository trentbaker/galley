#!/usr/bin/env bash

case "$1" in
  dev)
    echo "----- dev -----"
      python3 -m venv .env
      source .env/bin/activate
      pip install --upgrade wheel pip
      pip install -r requirements.txt
    ;;
  deploy)
    echo "----- deploy -----"
    docker build -t galley .
    docker-compose up -d --remove-orphans
    ;;
  reload)
    echo "----- reload -----"
    source .env/bin/activate
    pip freeze | grep -v pkg-resources > requirements.txt

    docker build -t galley .
    docker-compose up -d --remove-orphans
    ;;
  *)
    echo "Usage: $0 {dev|deploy|reload}"
    ;;
esac