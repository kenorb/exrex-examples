#!/usr/bin/env sh
# Generate simple SQL SELECT queries
# Count: 242479643421355581451737412922042893341433004
# Examples:
# - SELECT * FROM users
# - SELECT id, name FROM customers WHERE active=1
# - SELECT COUNT(*) FROM orders
exrex $* \
    'SELECT ((\*|id|name|email)(, ?(id|name|email))*)? FROM (users|customers|orders|products)( WHERE [a-z]+=1)?'