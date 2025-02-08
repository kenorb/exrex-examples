#!/usr/bin/env sh
# Generate Image Dimensions
# Count: 392040000
# Examples:
# - 1920x1080
# - 800×600px
# - 3840x2160
# - 1024x768px
# - 1200x630

exrex $* \
    '([1-9][0-9]{2,3})[x×]([1-9][0-9]{2,3})(px)?'