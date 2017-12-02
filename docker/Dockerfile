FROM  alpine:latest
LABEL maintainer=jon@jaggersoft.com

RUN apk add 'rust' \
  --update-cache \
  --repository http://nl.alpinelinux.org/alpine/edge/community

RUN rustc --version | grep -q 1.22.1
