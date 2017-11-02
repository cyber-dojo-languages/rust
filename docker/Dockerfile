FROM  alpine:latest
LABEL maintainer=jon@jaggersoft.com

RUN apk update
RUN apk add rust

RUN rustc --version | grep -q 1.17.0

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# install tini (for pid 1 zombie reaping)
RUN apk add --update --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ tini
ENTRYPOINT [ "/sbin/tini", "--" ]
