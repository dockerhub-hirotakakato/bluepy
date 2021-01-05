FROM alpine:latest

RUN apk add glib python3 && \
    apk add -t del gcc glib-dev make musl-dev py3-pip && \
    pip install bluepy && \
    apk del --purge -r del && \
    rm /var/cache/apk/*
