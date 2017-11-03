FROM  alpine:latest
LABEL maintainer=jon@jaggersoft.com

RUN apk update && apk add rust

RUN rustc --version | grep -q 1.17.0
