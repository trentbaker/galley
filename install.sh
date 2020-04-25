#!/usr/bin/env bash

cp -r hooks/* .git/hooks/

python3 -m venv .env
source .env/bin/activate
pip freeze > requirements.txt