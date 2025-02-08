#!/usr/bin/env sh
# Generate OS version strings
# Examples:
# - Windows 11.0.22621
# - macOS 13.4.1
# - Ubuntu 22.04.3
exrex $* \
    '(Windows (10|11)\.[0-9]\.[0-9]{5}|macOS 1[3-4]\.[0-6]\.[1-9]|Ubuntu (20|22|23)\.(04|10)(\.[1-5])?)'