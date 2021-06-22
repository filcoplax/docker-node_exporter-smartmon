FROM alpine:3.14.0

LABEL maintianer="Peng Wenming <ffxgamer@163.com>"


    
COPY smartmon.sh /scripts/smartmon.sh
COPY entrypoint.sh /entrypoint.sh

RUN  apk add --no-cache smartmontools bash && \
     mkdir -p /scripts && \
     chmod 755 /entrypoint.sh /scripts/smartmon.sh

VOLUME ["/var/lib/node_exporter"]

CMD ["/entrypoint.sh"]
