#!/usr/bin/env sh
# Generate common file extensions
# Examples: .txt, .pdf, .docx, .jpg
exrex $* \
    '\.(txt|pdf|docx?|xlsx?|jpe?g|png|gif|mp[34]|avi|zip|tar\.gz)'