#!/usr/bin/env sh
# Generate U.K. Postcodes.
# Count: 1755842400
# Examples:
# - EC1A 1BB
# - W1A 0AX
# - M1 1AE
# - B33 8TH
# - CR2 6XH
# - DN55 1PT
exrex $* \
    '[A-Z]{1,2}\d[A-Z\d]? \d[A-Z]{2}'