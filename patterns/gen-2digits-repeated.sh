#!/usr/bin/env sh
# Generate 2-digit patterns repeated 0-3 times
# Count: 100
# Examples: 12, 1212, 121212, 12121212

# Pattern: 
# - Capture 2 digits in named group 'digits'
# - Repeat the captured group 0-3 times using backreference
pattern="(?P<digits>[0-9]{2})(?P=digits){0,3}"

# Generate sequences using exrex
exrex $* "$pattern"