#!/usr/bin/env sh
# Generate simple ABC music notation.
# It uses letters (A-G) for the notes
# and other characters for rhythm, key, and other details.
# The symbols like | separate measures.
# Count: 1475827472
# Examples:
# - C D E F|G A B c|

# Define components
NOTES="[A-Ga-g]"

exrex $* \
    "(($NOTES )($NOTES )($NOTES )($NOTES)[|]){1,2}"