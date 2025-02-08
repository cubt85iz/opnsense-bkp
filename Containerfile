FROM docker.io/library/alpine:3.21

ENV OPNSENSE_USER_KEY=
ENV OPNSENSE_USER_SECRET=
ENV OPNSENSE_URI=

RUN apk add --no-cache curl

RUN mkdir /config
VOLUME /config

COPY src/* /
WORKDIR /
ENTRYPOINT ["/download-backup.sh", "/config/"]