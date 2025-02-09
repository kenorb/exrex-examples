#!/usr/bin/env sh
# Generate palindromes.
# Count: 17576
# Examples:
# - bob
# - deed
# - level
# - radar
# - madam
# - kayak

exrex $* \
    "([a-z])([a-z])([a-z])\2\1"