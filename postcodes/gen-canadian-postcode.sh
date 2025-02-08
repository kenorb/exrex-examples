#!/usr/bin/env sh
# Generate Canadian Postal Codes.
# Count: 17576000
# Examples:
# - K1A 0B1
# - B1Z 0B9
# - M5V 3L9
exrex $* \
    '[A-Z]\d[A-Z] \d[A-Z]\d'