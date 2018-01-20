#!/bin/sh

make entrypoint

# This will exec the CMD from your Dockerfile, i.e. "npm start"
exec "$@"
