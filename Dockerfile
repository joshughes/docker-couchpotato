FROM alpine:3.2
MAINTAINER Joe Hughes


COPY scripts/ /scripts/

RUN scripts/install_deps.sh

VOLUME /config
VOLUME /data

EXPOSE 5050

CMD ["/scripts/start.sh"]
