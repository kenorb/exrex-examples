#!/usr/bin/env sh
# Generate ABC2MIDI notation patterns
# Count: 9834496
# Examples:
# - D4 | G4 | A4 | B4 |
# - C2 | F2 | G2 | A2 |
# - E8 | A8 | B8 | C8 |

# Define components
NOTES="[A-G]"
DURATION="[1-8]"

exrex $* \
    "($NOTES$DURATION \| ){3}($NOTES$DURATION \|)"