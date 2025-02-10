#!/usr/bin/env sh
# Generate 1-digit patterns repeated 0-3 times
# Count: 440
# Examples: 0, 111, 22222

# Pattern: 
# - Capture 1 digits in named group 'digits'
# - Repeat the captured group 0-5 times using backreference
pattern="(?P<digits>[0-9]{1,1})(?P=digits){0,10}"

# Generate sequences using exrex
exrex $* "$pattern"
