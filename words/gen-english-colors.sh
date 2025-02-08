#!/usr/bin/env sh
# Generate English color names.
# Count: 8700
# Examples:
# - warm golden brown
# - pastel blue-green
# - forest green
# - neon pink
# - cool silver

# Define color components
BASE_COLORS="red|blue|green|yellow|purple|orange|pink|brown|grey|black|white"
MODIFIERS="dark|light|pale|bright|deep"
TONE_MODIFIERS="warm|cool|soft|rich|vivid"
SHADE_MODIFIERS="pastel|neon|muted|dusty"
SPECIFIC_COLORS="navy|crimson|azure|violet|indigo|maroon|teal|cyan"
METAL_COLORS="golden|silver|bronze|copper"
NATURE_COLORS="forest|sky|ocean|sand|moss|stone"

exrex $* \
    "(($MODIFIERS|$TONE_MODIFIERS|$SHADE_MODIFIERS) )?($BASE_COLORS|$SPECIFIC_COLORS|$METAL_COLORS|$NATURE_COLORS)(-($BASE_COLORS|$SPECIFIC_COLORS))?"