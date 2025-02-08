#!/usr/bin/env sh
# Generate Chess notation.
# Count: 34828517376
# Examples:
# - a2# Be8f4#
# - a2# Be8f5
# - a2# Be8f5+
# - a2# Be8f5#
# - a2# Be8f6
exrex $* \
    '([KQRBN]?[a-h]?[1-8]?x?[a-h][1-8][+#]?) ([KQRBN]?[a-h]?[1-8]?x?[a-h][1-8][+#]?)'