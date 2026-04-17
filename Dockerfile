FROM nginx:1.30.0-alpine@sha256:0272e4604ed93c1792f03695a033a6e8546840f86e0de20a884bb17d2c924883

RUN apk add tzdata && \
    ln -s /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime

COPY default.conf /etc/nginx/conf.d/default.conf
