#!/usr/bin/env sh
# Generate 6-key keyboard patterns
# Count: 6
# Examples: qwerty, asdfgh, zxcvbn, 123456

# Horizontal patterns - top row
top_row='qwerty|ertyui|rtyuio|poiuyt|oiuytr|asdfgh|sdfghj|dfghjk|fghjkl|lkjhgf|kjhgf;|jhgf;\"'

# Horizontal patterns - home row
home_row='asdfgh|sdfghj|dfghjk|fghjkl|lkjhgf|kjhgf;|jhgf;\"'

# Horizontal patterns - bottom row
bottom_row='zxcvbn|xcvbnm|nbvcxz|mnbvcx'

# Diagonal patterns
diag_patterns='qwsxcv|wsxcvb|edcvfr|rfvcde|tgbyhn|yhnbgt|ujmik,|mik,\.|ik,\.\/'

# Vertical patterns
vert_patterns='qazwsx|wsxedc|edcrfv|rfvtgb|tgbyhn|yhnujm|ujmik,|mik,\.|ik,\.\/'

# Number patterns
number_row='123456|234567|345678|456789|567890|098765|987654|876543|765432|654321'

# Reverse patterns
reverse_patterns='ytrewq|hgfdsa|mnbvcx|098765|987654|876543|765432|654321|543210'

# Combine all patterns
patterns="($top_row|$home_row|$bottom_row|$diag_patterns|$vert_patterns|$number_row|$reverse_patterns)"

# Generate sequences
exrex $* \
    "(?P<keys>$patterns){1}(?P=keys){0,2}"