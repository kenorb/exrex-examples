#!/usr/bin/env sh
# Generate ABC music notation.
# Count: 3631139726846932997231689915149174718464
# Examples:
# - GFG BAB | gfg gab |
# - d2A AFD |
# - efe edB |1 dBA AFD :|
# - dBA ABd |]

# Define components
NOTES="[A-Ga-g]"
DURATION="[2-3]?"
BAR_END="\|"
REPEAT_END="\:|"
FINAL_BAR="\|]"

exrex $* \
    "(($NOTES$DURATION){3} ($NOTES$DURATION){3} $BAR_END ){1,3}((($NOTES$DURATION){3} ($NOTES$DURATION){3})($BAR_END|$REPEAT_END|$FINAL_BAR))"