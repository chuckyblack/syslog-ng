FROM alpine:edge

RUN apk add --no-cache syslog-ng

COPY syslog-ng.conf /etc/syslog-ng/

VOLUME ["/var/run/syslog-ng/", "/var/log/docker"]

CMD ["syslog-ng", "-F"]
