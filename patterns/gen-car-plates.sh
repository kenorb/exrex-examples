#!/usr/bin/env sh
# Generate Vehicle License Plates
# Count: 13592264400
# Examples: ABC-123, XX-999-YY
exrex $* \
    '[A-Z]{2,3}-[0-9]{2,3}(-[A-Z]{2})?'