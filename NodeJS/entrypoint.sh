#!/bin/sh

make -f /usr/src/app/Makefile entrypoint

# This will exec the CMD from your Dockerfile, i.e. "npm start"
exec "$@"
