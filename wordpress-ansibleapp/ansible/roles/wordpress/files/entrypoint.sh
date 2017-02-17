#!/bin/bash
set -ex

cd /setup
ansible-playbook initialize.yml

exec "$@"
