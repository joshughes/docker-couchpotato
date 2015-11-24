FROM alpine:3.2
MAINTAINER Joe Hughes


COPY scripts/ /scripts/

RUN scripts/install_deps.sh
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /CouchPotatoServer

VOLUME /config
VOLUME /data

EXPOSE 5050

CMD ["/scripts/start.sh"]
