#!/usr/bin/env sh
# Generate coordinates in DMS (degrees, minutes, and seconds) format.
# Count: 170368000
# Examples:
# - 12° 34' 56″N
# - 45°67'88″W
# - 89° 01' 23″E
exrex $* \
    '[0-9]{1,2}° ?[0-9]{1,2}[′'\''] ?[0-9]{1,2}[″"] ?[ENSW]'