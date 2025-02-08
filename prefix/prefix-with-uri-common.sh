#!/usr/bin/env sh
# Generate URI prefixes.
# Count: 33
# Examples:
# - http://
# - https://www.
exrex $* \
    '(file|ftp?|git|https?|mailto|ipfs|sftp|ssh|urn)://(www?\.)?'