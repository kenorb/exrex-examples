#!/usr/bin/env sh
# Generate 1-letter patterns repeated 0-4 times.
# Count: 130
# Examples: a, aa, aaa, aaaa

# Pattern: 
# - Capture 1 letter in named group 'letter'
# - Repeat the captured group 0-3 times using backreference
pattern="(?P<letter>[a-z]{1})(?P=letter){0,4}"

# Generate sequences using exrex
exrex $* "$pattern"