FROM node:8

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY entrypoint.sh /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
CMD ["npm", "start"]
