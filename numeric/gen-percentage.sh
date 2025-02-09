#!/usr/bin/env sh
# Generate percentages from 0% to 100%
# Count: 11103
# Examples:
# - 0%
# - 50%
# - 75.5%
# - 100.00%
# - 99.99%

exrex $* \
    '(100(\.0{1,2})?|[1-9]?[0-9](\.[0-9]{1,2})?)\%'