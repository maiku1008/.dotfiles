#!/bin/bash
# Set env var
export ANSIBLE_HOST_KEY_CHECKING=False
# Tear down vagrant
vagrant destroy -f
# Remove host key
sed -i '' '/127.0.0.1/d' ~/.ssh/known_hosts
# Up vagrant
vagrant up
