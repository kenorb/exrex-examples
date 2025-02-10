#!/usr/bin/env sh
# Generate 4-key keyboard patterns
# Examples: qwer, asdf, zxcv, 1234

# Horizontal patterns - top row
top_row='qwer|wert|erty|rtyu|tyui|yuio|uiop|poiu|oiuy|iuyt|uytr|ytre|rewq'

# Horizontal patterns - home row
home_row='asdf|sdfg|dfgh|fghj|ghjk|hjkl|lkjh|kjhg|jhgf|hgfd|gfds|fdsa'

# Horizontal patterns - bottom row
bottom_row='zxcv|xcvb|cvbn|vbnm|mnbv|bvcx|vcxz|cxza'

# Diagonal patterns
diag_patterns='qwsx|wsxc|edcv|rfvc|tgby|yhnb|ujmi|mik,|ik,.|qazw|wsed|edrf|drft|rfty|ftyg|tygh|yghu|ghuj|hujk|jkl;|kl;'"'"'|l;'"'"']'

# Vertical patterns
vert_patterns='qazw|wsxe|edcr|rfvt|tgby|yhnu|ujmi|jmik|mik,|ik,.|k,./'

# Number patterns
number_row='1234|2345|3456|4567|5678|6789|7890|0987|9876|8765|7654|6543|5432|4321'

# Special character patterns
special_row='\{\[\]\}|\[\{\}\]|\]\{\}\[|\}\[\]\{|\]\}\{\[|\}\]\[\{|\[\]\{\}|\{\}\[\]|'"'"'";\\|;",\.|,\./<|/\.,<'

# Combine all patterns
patterns="($top_row|$home_row|$bottom_row|$diag_patterns|$vert_patterns|$number_row|$special_row)"

# Generate sequences
exrex $* \
    "(?P<keys>$patterns){1}(?P=keys){0,2}"