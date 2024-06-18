#!/bin/sh
# Create hash for relay-domains
postmap /etc/postfix/relay-domains

# Start postfix
postfix start-fg
