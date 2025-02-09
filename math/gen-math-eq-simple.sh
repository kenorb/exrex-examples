#!/usr/bin/env sh
# Generate simple math equations.
# Count: 558600
# Examples:
# - 2+2*2
# - 5-3+1
# - 7*8
# - 9+4-2*3

exrex $* \
    "([0-9][+\-*]){1,3}[0-9]=?"