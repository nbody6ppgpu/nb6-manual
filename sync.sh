#!/usr/bin/env bash
# Sync this repo's main branch with the Overleaf project (master branch).
# Fetches both remotes, merges Overleaf into main, then pushes to both
# origin (GitHub) and overleaf. Stops on the first merge conflict without
# resolving or overwriting either side.
set -euo pipefail

git fetch origin
git fetch overleaf

git merge --no-edit overleaf/master || {
    echo "Merge conflict with overleaf/master. Resolve manually, then:" >&2
    echo "  git push origin main && git push overleaf HEAD:master" >&2
    git merge --abort
    exit 1
}

git push origin main
git push overleaf HEAD:master
