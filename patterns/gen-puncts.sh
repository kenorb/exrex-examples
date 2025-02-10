#!/usr/bin/env sh
# Generate punctuation patterns.
# Count: 36
# Examples: ..., !?, ?!, !!

# Basic punctuation patterns
dots='\.|\.\.|\.\.\.|\?|\?\?|\?\?\?|\!|\!\!|\!\!\!'
quotes='\"|\'\''|\`|\`\`|\"\"|'\'''\'''

# Combination patterns
excl_quest='\!\?|\?\!|\!\?\!|\?\!\?'
dots_marks='\.\?|\?\.|\.\.\.|\!\.'

# Special punctuation
brackets='\[\]|\{\}|\(\)|\<\>'
symbols='\@\#|\$\%|\^\&|\*'
math_ops='\+\-|\-\+|\*\/|\/\*|\=\!'

# Combine all patterns
patterns="($dots|$quotes|$excl_quest|$dots_marks|$brackets|$symbols|$math_ops)"

# Generate sequences
exrex $* \
    "(?P<punct>$patterns){1}(?P=punct){0,2}"