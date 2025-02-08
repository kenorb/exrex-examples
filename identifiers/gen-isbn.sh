#!/usr/bin/env sh
# Generate ISBN-13 numbers
# Count: 220000000000
# Examples:
# - 978-0-321-75104-1
# - 979-1-234-56789-7
exrex $* \
    '97[89]-[0-9]-[0-9]{3,4}-[0-9]{5}-[0-9]'