FROM nginx:1.31.7-alpine@sha256:892bb2152464f0c5d8972593a5f5afaf8054552580b699d95f8ff4af08c2d33d

RUN apk add tzdata && \
    ln -s /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime

COPY default.conf /etc/nginx/conf.d/default.conf
