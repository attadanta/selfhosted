#!/usr/bin/env bash
docker build -t ansibletest .
docker run --rm ansibletest /bin/bash -c "ansible-playbook -i hosts --limit localhost site.yml --skip-tags 'personal'"
