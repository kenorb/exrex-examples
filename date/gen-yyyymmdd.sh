#!/usr/bin/env sh
# Generate dates in yyyymmdd format.
# Count: 115200
# Examples:
# - 2001 01 01
# - 2001.01.01
# - 2001/01/01
# - 20010101
exrex $* \
    '([0-9]{4})([/. ]?)(0[1-9]|1[0-2])\2([0-2][0-9]|3[0-1])'