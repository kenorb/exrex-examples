#!/usr/bin/env sh
# Generate dates in ddmmyyyy format.
# Count: 115200
# Examples:
# - 01 01 2001
# - 01.01.2001
# - 01/01/2001
# - 01012001
exrex $* \
	'([0-2][0-9]|3[0-1])([/. ]?)(0[1-9]|1[0-2])\2([0-9]{4})'