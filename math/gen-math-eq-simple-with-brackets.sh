#!/usr/bin/env sh
# Generate simple math equations with brackets.
# Count: 14596218000
# Examples:
# - (1+2)+(2*9)-5

exrex $* \
    "(([(][0-9][+\-*][0-9][)])[+\-*]){1,3}[0-9]=?"