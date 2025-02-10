#!/usr/bin/env sh
# Generate complex English-like words with realistic phonetic patterns
# Count: 7787078208
# Examples:
# - strength
# - through
# - knights
# - weather
# - straight
# - plights

# Pattern components explained:
# - Optional vowel/diphthong start
# - Complex consonant clusters
# - Multiple syllable combinations
# - Common English word endings
# - Optional plural form

exrex $* \
    "^(([aeiouy]|au|ye)?((b[jlrs]?|c([chlrt]|hn)?|d([bdnrv]|dr)?|f[rt]?|f[ft]w?|g[nr]?|h|j|k[n]?|l([ls]|dr)?|m([bmp]|pl)?|n([cdfglst]|cl|[gt]l|tr)?|p([hlmprt]|pl)?|q|r([cdfgkmsv]|[nrst]d?|nm|tm)?|s([cdhmpst]|[c][hr]?|sw|tr)?|t([ltw]|[hr]r?|tl)?|w[h]|w[n]l?|v|w|x[p]?|z)([aeouy]?|a[oiuy]|e[aeio]|i([aeo]|ou)?|o[aeiou]|u[aei])){1,2}([dklmpstwxy]|b[s]?|c[hkt]?|f[ft]?|g([hn]|ht)|h[n]|l([dlpt]|th)|n([dgkt]|st)?|r([dkmnt]|ch|ld|st|th)?|s[ht]|th|wn|ws|xt)?)s?$"
