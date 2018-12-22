#!/bin/bash

# ######################################
# NodeJS v8.14.1, NPM 6, yarn latest
# ######################################

docker build --build-arg VERSION=v8.14.1 --build-arg NPM_VERSION=6 -t vaeum/node:8-alpine-npm .
docker push vaeum/node:8-alpine-npm

docker build --build-arg VERSION=v8.14.1 --build-arg NPM_VERSION=6 --build-arg YARN_VERSION=latest -t vaeum/node:8-alpine-npm-yarn .
docker push vaeum/node:8-alpine-npm-yarn

docker build --build-arg VERSION=v8.14.1 --build-arg CONFIG_FLAGS="--without-npm" --build-arg YARN_VERSION=latest -t vaeum/node:8-alpine-yarn .
docker push vaeum/node:8-alpine-yarn

docker build --build-arg VERSION=v8.14.1 --build-arg CONFIG_FLAGS="--fully-static --without-npm" --build-arg DEL_PKGS="libstdc++" --build-arg RM_DIRS=/usr/include -t vaeum/node:8-alpine-base .
docker push vaeum/node:8-alpine-base

# ######################################
# NodeJS v10.14.2, NPM 6, yarn latest
# ######################################

docker build --build-arg VERSION=v10.14.2 --build-arg NPM_VERSION=6  -t vaeum/node:10-alpine-npm .
docker push vaeum/node:10-alpine-npm

docker build --build-arg VERSION=v10.14.2 --build-arg NPM_VERSION=6 --build-arg YARN_VERSION=latest -t vaeum/node:10-alpine-npm-yarn .
docker push vaeum/node:10-alpine-npm-yarn

docker build --build-arg VERSION=v10.14.2 --build-arg CONFIG_FLAGS="--without-npm" --build-arg YARN_VERSION=latest -t vaeum/node:10-alpine-yarn .
docker push vaeum/node:10-alpine-yarn

docker build --build-arg VERSION=v10.14.2 --build-arg CONFIG_FLAGS="--fully-static --without-npm" --build-arg DEL_PKGS="libstdc++" --build-arg RM_DIRS=/usr/include -t vaeum/node:10-alpine-base .
docker push vaeum/node:10-alpine-base

# ######################################
# NodeJS v11.5.0, NPM 6, yarn latest
# ######################################

docker build --build-arg VERSION=v11.5.0 --build-arg NPM_VERSION=6  -t vaeum/node:11-alpine-npm .
docker push vaeum/node:11-alpine-npm

docker build --build-arg VERSION=v11.5.0 --build-arg NPM_VERSION=6 --build-arg YARN_VERSION=latest -t vaeum/node:11-alpine-npm-yarn .
docker push vaeum/node:11-alpine-npm-yarn

docker build --build-arg VERSION=v11.5.0 --build-arg CONFIG_FLAGS="--without-npm" --build-arg YARN_VERSION=latest -t vaeum/node:11-alpine-yarn .
docker push vaeum/node:11-alpine-yarn

docker build --build-arg VERSION=v11.5.0 --build-arg CONFIG_FLAGS="--fully-static --without-npm" --build-arg DEL_PKGS="libstdc++" --build-arg RM_DIRS=/usr/include -t vaeum/node:11-alpine-base .
docker push vaeum/node:11-alpine-base
