#!/usr/bin/env bash
docker build --target build -t ansibleinit .
docker run --rm ansibleinit /bin/bash -c "ansible-playbook -vvv -i hosts --limit localhost site.yml"

docker build --target run -t ansibleready .
