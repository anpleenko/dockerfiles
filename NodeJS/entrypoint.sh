#!/bin/sh

# Where $ENVSUBS is whatever command you are looking to run
# $ENVSUBS < fil1 > file2

npm install

NODE_ENV=production ./node_modules/.bin/webpack
BABEL_ENV=node ./node_modules/.bin/babel . --out-dir . --copy-files --ignore node_modules,public,dist,mongodb

# This will exec the CMD from your Dockerfile, i.e. "npm start"
exec "$@"
