ARG IMAGE=nginx
FROM $IMAGE

LABEL maintainer "me@maxep.me"
LABEL description "LibreTime Nginx"
LABEL org.opencontainers.image.source https://github.com/LYL-Radio/libretime-nginx

RUN addgroup -gid 1000 libretime
RUN usermod -u 1000 nginx
RUN adduser nginx libretime