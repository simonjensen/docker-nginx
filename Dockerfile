FROM nginx:1.23.3-alpine

RUN apk add tzdata && \
    ln -s /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime

COPY default.conf /etc/nginx/conf.d/default.conf
