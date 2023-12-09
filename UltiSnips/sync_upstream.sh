#!/usr/bin/env bash

# Add a new remote upstream repository
git remote add upstream https://github.com/honza/vim-snippets.git

# Sync your fork
git fetch upstream
git checkout master
git merge upstream/master
