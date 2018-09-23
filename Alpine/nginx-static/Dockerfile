FROM nginx:stable-alpine

ARG config_dir=nginx

RUN rm -rf /etc/nginx/*

COPY ${static_dir} /etc/nginx
