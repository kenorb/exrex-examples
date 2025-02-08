#!/usr/bin/env sh
# Generate dates in dd/mm/yy format.
# Count: 115200
# Examples:
# - 01 01 01
# - 01.01.01
# - 01/01/01
# - 010101

exrex $* \
    '([0-2][0-9]|3[0-1])([/. ]?)(0[1-9]|1[0-2])\2([0-9]{2})'