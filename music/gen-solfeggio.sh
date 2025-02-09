#!/usr/bin/env sh
# Generate music solfège syllables
# Count: 2306881192
# Examples:
# - do
# - do re mi
# - mi fa sol
# - la ti do
# - do re mi fa

exrex $* \
    "((do|re|mi|fa|sol|la|ti) ){1,10}(do|re|mi|fa|sol|la|ti)"