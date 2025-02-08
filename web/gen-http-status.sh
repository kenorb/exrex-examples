#!/usr/bin/env sh
# Generate HTTP status codes
# Examples: 200 OK, 404 Not Found, 500 Internal Server Error
exrex $* \
    '(200 OK|201 Created|400 Bad Request|404 Not Found|500 Internal Server Error)'