#!/bin/bash

# Setting environment variables
export PROXY_OPTS="${PROXY_OPTS:- -vv -l localhost:9999 -r www.google.com:8080 -c}"

# Starting the proxy
/usr/local/bin/tcp-proxy $PROXY_OPTS
