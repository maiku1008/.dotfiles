#!/bin/bash

echo "Dumping content of /Applications in app_list.md"
ls /Applications > app_list.md

echo "Dumping list of installed brew apps in brew_list.md"
brew list > brew_list.md

