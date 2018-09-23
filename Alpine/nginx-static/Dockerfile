FROM nginx:stable-alpine

ARG nginx_config_dir=nginx

RUN rm -rf /etc/nginx

COPY ${nginx_config_dir} /etc/nginx
