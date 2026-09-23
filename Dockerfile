FROM nginx:1.31.6-alpine@sha256:d10753d9289b8e3f884386351f73554ce72b631378949deddd75e83ee296c427

RUN apk add tzdata && \
    ln -s /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime

COPY default.conf /etc/nginx/conf.d/default.conf
