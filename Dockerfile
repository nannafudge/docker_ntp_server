FROM alpine:3.6

RUN apk update
RUN apk add --no-cache chrony bash

EXPOSE 123 323

RUN mkdir /tmp/scripts
COPY ./scripts/* /tmp/scripts
RUN chmod +x /tmp/scripts/*

ENTRYPOINT ["/tmp/scripts/boot.sh"]
CMD ["-d"]
