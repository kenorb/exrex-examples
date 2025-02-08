#!/usr/bin/env sh
# Generate git commands
# Examples:
# - git commit -m "fix: update readme"
# - git push origin main
# - git checkout -b feature/login
exrex $* \
    'git (commit -m "(fix|feat|docs)"|push origin (main|dev)|checkout -b (feature|bugfix))'