#!/usr/bin/env sh
# Generate Product Keys
# Count: 808281277464764060643139600456536293376
# Examples: ABCD1-EFG23-HIJ45-KLM67-NOP89
exrex $* \
    '[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}'