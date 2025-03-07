#!/usr/bin/env bash
# Creates sequences with adjacent keys pattern.
# Count: 299

# Adjacent keys patterns.
s1l='`1234567890-=' # Number row (lower case)
s1u='~!@#$%^&*()_+' # Number row (upper case)
s2l='qwertyuiop[]\' # Top row (lower case)
s2u='QWERTYUIOP{}|' # Top row (upper case)
s3l='asdfghjkl;'"'"'\' # Home row (lower case)
s3u='ASDFGHJKL:"|' # Home row (upper case)
s4l='zxcvbnm,./' # Bottom row (lower case)
s4u='ZXCVBNM<>?' # Bottom row (upper case)

s1l1p="((((((((((((([${s1l:0:1}])?[${s1l:1:1}])?[${s1l:2:1}])?[${s1l:3:1}])?[${s1l:4:1}])?[${s1l:5:1}])?[${s1l:6:1}])?[${s1l:7:1}])?[${s1l:8:1}])?[${s1l:9:1}])?[${s1l:10:1}])?[${s1l:11:1}])?[${s1l:12:1}]?)?"
s1l2p="[${s1l:0:1}]?([${s1l:1:1}]([${s1l:2:1}]([${s1l:3:1}]([${s1l:4:1}]([${s1l:5:1}]([${s1l:6:1}]([${s1l:7:1}]([${s1l:8:1}]([${s1l:9:1}]([${s1l:10:1}]([${s1l:11:1}]([${s1l:12:1}])?)?)?)?)?)?)?)?)?)?)?)?"

s1u1p="((((((((((((([${s1u:0:1}])?[${s1u:1:1}])?[${s1u:2:1}])?[${s1u:3:1}])?[${s1u:4:1}])?[${s1u:5:1}])?${s1u:6:1})?[${s1u:7:1}])?[${s1u:8:1}])?[${s1u:9:1}])?[${s1u:10:1}])?[${s1u:11:1}])?[${s1u:12:1}]?)?"
s1u2p="[${s1u:0:1}]?([${s1u:1:1}]([${s1u:2:1}]([${s1u:3:1}]([${s1u:4:1}]([${s1u:5:1}](${s1u:6:1}([${s1u:7:1}]([${s1u:8:1}]([${s1u:9:1}]([${s1u:10:1}]([${s1u:11:1}]([${s1u:12:1}])?)?)?)?)?)?)?)?)?)?)?)?"

s2l1p="((((((((((((([${s2l:0:1}])?[${s2l:1:1}])?[${s2l:2:1}])?[${s2l:3:1}])?[${s2l:4:1}])?[${s2l:5:1}])?[${s2l:6:1}])?[${s2l:7:1}])?[${s2l:8:1}])?[${s2l:9:1}])?[${s2l:10:1}])?[${s2l:11:1}])?[${s2u:12:1}]?)?"
s2l2p="[${s2l:0:1}]?([${s2l:1:1}]([${s2l:2:1}]([${s2l:3:1}]([${s2l:4:1}]([${s2l:5:1}]([${s2l:6:1}]([${s2l:7:1}]([${s2l:8:1}]([${s2l:9:1}]([${s2l:10:1}]([${s2l:11:1}]([${s2u:12:1}])?)?)?)?)?)?)?)?)?)?)?)?"

s2u1p="((((((((((((([${s2u:0:1}])?[${s2u:1:1}])?[${s2u:2:1}])?[${s2u:3:1}])?[${s2u:4:1}])?[${s2u:5:1}])?[${s2u:6:1}])?[${s2u:7:1}])?[${s2u:8:1}])?[${s2u:9:1}])?[${s2u:10:1}])?[${s2u:11:1}])?[${s2u:12:1}]?)?"
s2u2p="[${s2u:0:1}]?([${s2u:1:1}]([${s2u:2:1}]([${s2u:3:1}]([${s2u:4:1}]([${s2u:5:1}]([${s2u:6:1}]([${s2u:7:1}]([${s2u:8:1}]([${s2u:9:1}]([${s2u:10:1}]([${s2u:11:1}]([${s2u:12:1}])?)?)?)?)?)?)?)?)?)?)?)?"

s3l1p="(((((((((((([${s3l:0:1}])?[${s3l:1:1}])?[${s3l:2:1}])?[${s3l:3:1}])?[${s3l:4:1}])?[${s3l:5:1}])?[${s3l:6:1}])?[${s3l:7:1}])?[${s3l:8:1}])?[${s3l:9:1}])?[${s3l:10:1}])?[\\${s3l:11:1}])?"
s3l2p="[${s3l:0:1}]?([${s3l:1:1}]([${s3l:2:1}]([${s3l:3:1}]([${s3l:4:1}]([${s3l:5:1}]([${s3l:6:1}]([${s3l:7:1}]([${s3l:8:1}]([${s3l:9:1}]([${s3l:10:1}]([\\${s3l:11:1}])?)?)?)?)?)?)?)?)?)?)?"

s3u1p="(((((((((((([${s3u:0:1}])?[${s3u:1:1}])?[${s3u:2:1}])?[${s3u:3:1}])?[${s3u:4:1}])?[${s3u:5:1}])?[${s3u:6:1}])?[${s3u:7:1}])?[${s3u:8:1}])?[${s3u:9:1}])?[${s3u:10:1}])?[${s3u:11:1}])?"
s3u2p="[${s3u:0:1}]?([${s3u:1:1}]([${s3u:2:1}]([${s3u:3:1}]([${s3u:4:1}]([${s3u:5:1}]([${s3u:6:1}]([${s3u:7:1}]([${s3u:8:1}]([${s3u:9:1}]([${s3u:10:1}]([${s3u:11:1}])?)?)?)?)?)?)?)?)?)?)?"

s4l1p="(((((((((([${s4l:0:1}])?[${s4l:1:1}])?[${s4l:2:1}])?[${s4l:3:1}])?[${s4l:4:1}])?[${s4l:5:1}])?[${s4l:6:1}])?[${s4l:7:1}])?[${s4l:8:1}])?[${s4l:9:1}])?"
s4l2p="[${s4l:0:1}]?([${s4l:1:1}]([${s4l:2:1}]([${s4l:3:1}]([${s4l:4:1}]([${s4l:5:1}]([${s4l:6:1}]([${s4l:7:1}]([${s4l:8:1}]([${s4l:9:1}])?)?)?)?)?)?)?)?)?"

s4u1p="(((((((((([${s4u:0:1}])?[${s4u:1:1}])?[${s4u:2:1}])?[${s4u:3:1}])?[${s4u:4:1}])?[${s4u:5:1}])?[${s4u:6:1}])?[${s4u:7:1}])?[${s4u:8:1}])?[${s4u:9:1}])?"
s4u2p="[${s4u:0:1}]?([${s4u:1:1}]([${s4u:2:1}]([${s4u:3:1}]([${s4u:4:1}]([${s4u:5:1}]([${s4u:6:1}]([${s4u:7:1}]([${s4u:8:1}]([${s4u:9:1}])?)?)?)?)?)?)?)?)?"

exrex $* \
    "($s1l1p|$s1l2p|$s1u1p|$s1u2p|$s2l1p|$s2l2p|$s2u1p|$s2u2p|$s3l1p|$s3l2p|$s3u1p|$s3u2p|$s4l1p|$s4l2p|$s4u1p|$s4u2p)"