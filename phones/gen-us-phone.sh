#!/usr/bin/env sh
# Generate U.S. Phone Numbers.
# Count: 10000000000
# Examples:
# - (123) 456-7890
# - (987) 654-3210
exrex $* \
    '\(\d{3}\) \d{3}-\d{4}'