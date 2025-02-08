#!/usr/bin/env sh
# Generate MIME types.
# Count: 27
# Examples:
# - text/html
# - application/json
# - image/jpeg
exrex $* \
    '(text|application|image)/(html|json|xml|jpeg|png|pdf|plain|css|javascript)'