#!/usr/bin/env sh
# Generate Docker Container IDs
# Count: 281474976710656
# Examples: a1b2c3d4e5f6
exrex $* \
    '[0-9a-f]{12}'