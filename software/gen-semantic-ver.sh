#!/usr/bin/env sh
# Generate Semantic Version numbers.
# Count: 1000000
# Examples:
# - 1.0.0
# - 2.3.4-alpha.1
# - 3.0.0-beta.2+build.123
# - 0.1.0-rc.1
exrex $* \
    '(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?'