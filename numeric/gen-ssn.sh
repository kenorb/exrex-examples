#!/usr/bin/env sh
# Generate U.S. Social Security Numbers (SSN).
# Count: 1000000000
# Examples:
# - 123-45-6789
# - 987-65-4321
exrex $* \
    '\d{3}-\d{2}-\d{4}'