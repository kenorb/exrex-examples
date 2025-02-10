#!/usr/bin/env sh
# Generate 2-character punctuation patterns repeated 0-3 times
# Count: 3248
# Examples: !, ??, !?!

# Pattern: 
# - Capture 2 characters in named group 'punct'
# - Repeat the captured group 0-3 times using backreference
pattern="(?P<punct>[^\w]{1,2})(?P=punct){0,3}"

# Generate sequences using exrex
exrex $* "$pattern"