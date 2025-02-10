#!/usr/bin/env sh
# Generate strings with adjacent 3-keys pattern.
# Count: 9306
# Examples:
# - asd
# - ewqewq
# - cxzcxzcxz

q='q(we|ws|wa|az|qa|12)'
w='w(er|qe|as|sd|wa|ws|wd|eq|23)'
e='e(rt|wr|sd|df|ew|es|ed|ef|34)'
r='r(ty|er|df|fg|re|rf|rt|45)'
t='t(yu|rt|fg|gh|tr|tf|tg|56)'
y='y(ui|ty|gh|hj|yt|yg|yh|67)'
u='u(io|yu|hj|jk|ui|uh|uj|78)'
i='i(op|ui|jk|kl|iu|ij|ik|89)'
o='o(p[|io|kl|l;|oi|ok|ol|90)'
p='p(\[\]|\[p|op|l;|;\"|po|pl|p\[|0\-)'

a='a(sd|df|ws|we|qz|qa|as|aq)'xw
s='s(df|fg|ed|er|wa|sa|sw|se|sx)'
d='d(fg|gh|rf|rt|es|ds|de|dc|df)'
f='f(gh|hj|tg|ty|rd|fd|fr|fc|fv)'
g='g(hj|jk|yh|yu|tf|gf|gt|gb|gh)'
h='h(jk|kl|uj|ui|yg|hg|hy|hb|hn)'
j='j(kl|l;|ik|io|uh|jh|ju|jn|jm)'
k='k(l;|;\'"'"'|ol|op|ij|kj|ki|km|kl)'
l='l(;\'"'"'|\'"'"'\\|p[|p]|ok|lk|lp|l;|l\'"'"')'

z='z(xc|cv|as|aq|za|zx|zs)'
x='x(cv|vb|sd|sa|zx|xc|xd|xa)'
c='c(vb|bn|df|ds|xc|cv|cd|cs)'
v='v(bn|nm|fg|fd|cv|vb|vf|vc)'
b='b(nm|m,|gh|gf|vb|bn|bg|bh)'
n='n(m,|,.|hj|hg|bn|nm|nh|nj)'
m='m(,.|.?|jk|jh|nm|m,|mj|mk)'

letters="($q|$w|$e|$r|$t|$y|$u|$i|$o|$p|$a|$s|$d|$f|$g|$h|$j|$k|$l|$z|$x|$c|$v|$b|$n|$m)"

d1='1(23|34|32|2|\`|q)'
d2='2(34|45|23|43|12|1|3|q|w)'
d3='3(45|56|34|54|23|2|4|w|e)'
d4='4(56|67|45|65|34|3|5|e|r)'
d5='5(67|78|56|76|45|4|6|r|t)'
d6='6(78|89|67|87|56|5|7|t|y)'
d7='7(89|90|78|98|67|6|8|y|u)'
d8='8(90|0\-|89|09|78|7|9|u|i)'
d9='9(0\-|321|90|\-0|89|8|0|i|o)'
d0='0(\-|12|\-0|90|09|9|\-|o|p)'

digits="($d1|$d2|$d3|$d4|$d5|$d6|$d7|$d8|$d9|$d0)"

c_minus='\-(=|23|12|\-0|\[p|0p)'
c_equals='=(0|32|23|\-0|\-0|p\[)'
c_section='§(12|23|34|45|56|\`1|1\`)'
c_exclaim='!(12|\`1|1\`|m,.|,.?,|q1)'
c_at='@(21|12|w2|,.|.?,|/.,)'
c_pound='£(32|23|e3|,.?,|/.,)'
c_dollar='$(43|34|r4|%4|%,|,?,|/.,)'
c_percent='%(54|45|t5|,?,|/.,)'
c_caret='\^(65|56|y6|5%|5\^|\?,|/.,)'
c_amp='&(76|67|u7|\?,|/.,)'
c_star='\*(87|78|i8|\?,|/.,)'
c_lparen='\((98|89|o9|\?,|/.,)'
c_rparen='\)(09|90|p0|\?,|/.,)'
c_underscore='_(\\-0|0\\-|p\\-|,|/.,)'
c_plus='\+(=|\\-|\\[=|,|/.,)'
c_equals2='=(+-|-+|{\[|,|/.,)'
c_lbrace='{(p\[|\]}|\[|,|/.,)'
c_lbracket='\[(p{|{]|po|l;|;'\''|\])'
c_rbrace='}({\]|\]\[|{|,|/.,)'
c_semicolon=';(l:|kl|l'\''|lk|p]|\[{|:)'
c_colon=':(l;|;l|;|,|/.,)'
c_squote=''\''(;l|l;|;|,|/.,)'
c_dquote='\"(;'\''|'\'';|'\''|,|/.,)'

# Fix special character patterns
c_backslash='\\(\\"|"/|,|/.,)'
c_pipe='\|(\\|/|,|/.,)'
c_comma=',(m.|.m|bn|nm|.)'
c_lt='<(,.|.,|,|/.,)'
c_dot='.(,<|>,|,\?|,m|m,|,)'
c_gt='>(.<|</|,|/.,)'
c_slash='/(>\?|\?.|>|,|/.,)'
c_question='\?(/.|./|/|,|/.,)'
c_plusminus='±(=\+|\+=|,|/.,)'
c_hash='#(32|£3|,|/.,)'
c_euro='€(43|$,|,|/.,)'

chars="($c_minus|$c_equals|$c_section|$c_exclaim|$c_at|$c_pound|$c_dollar|$c_percent|$c_caret|$c_amp|$c_star|$c_lparen|$c_rparen|$c_underscore|$c_plus|$c_equals2|$c_lbrace|$c_lbracket|$c_rbrace|$c_semicolon|$c_colon|$c_squote|$c_dquote|$c_backslash|$c_pipe|$c_comma|$c_lt|$c_dot|$c_gt|$c_slash|$c_question|$c_plusminus|$c_hash|$c_euro)"

exrex $* \
    "(?P<keys>$letters|$digits|$chars){1}(?P=keys){0,2}"