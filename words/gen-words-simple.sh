#!/usr/bin/env sh
# Generate simple English-like words
# Pattern components:
# - Optional vowel start: [aeiouy]?
# - 1-3 consonant-vowel pairs: ([bcdfgjklmnpqrstvwxz][aeiouy]){1,3}
# - Any letter ending: [a-z]
# Count: 282489606
# Examples:
# - banana
# - cat
# - dog
# - simple
# - extra
# - big

exrex $* \
    '[aeiouy]?([bcdfgjklmnpqrstvwxz][aeiouy]){1,3}[a-z]?'