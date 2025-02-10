#!/usr/bin/env sh
# Generate 5-key keyboard patterns
# Count: 5
# Examples: qwert, asdfg, zxcvb, 12345

# Horizontal patterns - top row
top_row='qwert|werty|ertyu|rtyui|tyuio|yuiop|poiuy|oiuyt|iuytr|uytre'

# Horizontal patterns - home row
home_row='asdfg|sdfgh|dfghj|fghjk|ghjkl|lkjhg|kjhgf|jhgfd|hgfds'

# Horizontal patterns - bottom row
bottom_row='zxcvb|xcvbn|cvbnm|nbvcx|mnbvc|bvcxz|vcxza'

# Diagonal patterns
diag_patterns='qwsxc|wsxcv|edcvf|rfvcd|tgbyh|yhnbg|ujmik|mik\,\.|ik,\.\/|qazws|wsedr|edrft|drfty|rftyg|ftygh|tyghu|yghuj|ghujk|hujkl'

# Vertical patterns
vert_patterns='qazws|wsxed|edcrf|rfvtg|tgbyh|yhnuj|ujmik|jmik,'

# Number patterns
number_row='12345|23456|34567|45678|56789|67890|09876|98765|87654|76543|65432|54321|43210'

# Combine all patterns
patterns="($top_row|$home_row|$bottom_row|$diag_patterns|$vert_patterns|$number_row)"

# Generate sequences
exrex $* \
    "(?P<keys>$patterns){1}(?P=keys){0,2}"