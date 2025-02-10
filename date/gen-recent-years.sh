#!/usr/bin/env sh
# Generate common years.
# Count: 110
# Examples:
# - 1900
# - 2000
# - 2025

exrex $* \
    "19[1-9][0-9]|20[01][0-9]"