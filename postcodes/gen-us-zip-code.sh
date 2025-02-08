#!/usr/bin/env sh
# Generate U.S. ZIP Codes.
# Count: 1000100000
# Examples:
# - 12345
# - 12345-6789
exrex $* \
    '\d{5}(-\d{4})?'