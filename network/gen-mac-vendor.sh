#!/usr/bin/env sh
# Generate MAC address vendor prefixes
# Examples: 00:00:0C (Cisco), 00:14:22 (Dell)
exrex $* \
    '(00:00:0C|00:14:22|00:1B:63|00:25:00|08:00:27)'