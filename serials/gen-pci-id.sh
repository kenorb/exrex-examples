#!/usr/bin/env sh
# Generate PCI bus IDs.
# Count: 439006988288
# Examples:
# - 0000:00:00.0
# - 0001:01:01.1
# - 1234:56:78.9
exrex $* \
    '([0-9a-fA-F]{4}):([0-9a-fA-F]{2}):([0-9a-fA-F]{2})\.([0-7])'