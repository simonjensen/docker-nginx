FROM nginx:1.31.7-alpine@sha256:42c36dfd0b3503b7966771550a91521262b4750665929821abf5069715610e20

RUN apk add tzdata && \
    ln -s /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime

COPY default.conf /etc/nginx/conf.d/default.conf
