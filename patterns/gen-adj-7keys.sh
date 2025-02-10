#!/usr/bin/env sh
# Generate 7-key keyboard patterns
# Examples: qwertyu, asdfghj, 1234567

# Top row sequential patterns
top_row='qwertyu|wertyui|ertyuio|rtyuiop|tyuiop\[|yuiop\]|\[uiop\]|\]iop\]'

# Home row sequential patterns
home_row='asdfghj|sdfghjk|dfghjkl|fghjkl;|ghjkl;\"|hjkl;\"|jkl;\"\]'

# Bottom row sequential patterns
bottom_row='zxcvbnm|xcvbnm,|cvbnm,\.|vbnm,\./|bnm,\./|nm,\./-|m,\./-'

# Diagonal patterns (down-right and down-left)
diag_patterns='qwsxcvb|poiuytr|qazwsxe|plmkoij|mnbvcxz|lkjhgf;|m,\.\/-'

# Vertical patterns (top-to-bottom)
vert_patterns='qazwsxe|wsxedcr|edcrfvt|rfvtgby|tgbyhnj|yhnujmi|ujmik,\.|mik,\.\/|ik,\.\/-'

# Number row sequential patterns
number_row='1234567|2345678|3456789|4567890|567890-|0987654|9876543|8765432|7654321|6543210'

# Reverse patterns
reverse_patterns='uytrewq|jhgfdsa|mnbvcxz|0987654|9876543|8765432|7654321|6543210|543210-'

# Combine patterns
patterns="($top_row|$home_row|$bottom_row|$diag_patterns|$vert_patterns|$number_row|$reverse_patterns)"

# Generate only 6-character sequences
exrex $* \
    "(?P<keys>$patterns){1}(?P=keys){0,2}"