#!/usr/bin/env sh
# Generate times in hh:mm:ss format.
# Count: 86400
# Examples:
# - 01:01:01
# - 12:30:45
# - 23:59:59
exrex $* \
    '([01][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])'