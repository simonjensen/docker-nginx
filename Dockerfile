FROM nginx:1.31.6-alpine@sha256:df221db836e1754089190208cee7eeda94f233197056426eda74a43ab1abeac2

RUN apk add tzdata && \
    ln -s /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime

COPY default.conf /etc/nginx/conf.d/default.conf
