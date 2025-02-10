#!/usr/bin/env sh
# Generate strings with adjacent keys pattern.
# Count: 44167651164
# Examples:
# - asd
# - ewqewq
# - cxzcxzcxz
ADJACENT_KEYS_3="(?:.{1,4}|qwe|wer|ert|rty|tyu|yui|uio|iop|op\[\|p\[\]|ewq|rew|tre|ytr|uyt|iuy|oiu|poi|\[po|\]\[p|asd|sdf|dfg|fgh|ghj|hjk|jkl|dsa|fds|gfd|hgf|jhg|kjh|lkj|zxc|xcv|cvb|vbn|bnm|cxz|vcx|bvc|nbv|mnb|123|234|345|456|567|678|789|890|90-|0-=|321|432|543|654|765|876|987|098|-09|=-0|m,\.|,\./|\.?,m|/\.,)"

exrex $* \
    "(?P<triplet>$ADJACENT_KEYS_3)(?P<td>.)(?P=triplet)((?P=td)(?P=triplet)){0,6}"