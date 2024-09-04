#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

scriptdir=$( cd -- "$(dirname "$(realpath -- "${BASH_SOURCE[0]}")")" &> /dev/null && pwd )
cd "$scriptdir"

if ! git remote | grep upstream; then
  git remote add upstream https://github.com/honza/vim-snippets.git
fi

git switch master

git fetch upstream

git merge --no-edit upstream/master


