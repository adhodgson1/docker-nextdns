FROM alpine
ARG NEXTDNS_VERSION
ENV NEXTDNS_ARGUMENTS=""
ENV NEXTDNS_ID=""
RUN wget -O /tmp/nextdns.tar.gz https://github.com/nextdns/nextdns/releases/download/v${NEXTDNS_VERSION}/nextdns_${NEXTDNS_VERSION}_linux_amd64.tar.gz  \
    && tar xf /tmp/nextdns.tar.gz -C /usr/bin nextdns && rm /tmp/nextdns.tar.gz
EXPOSE 53 53/udp
CMD /usr/bin/nextdns run -config ${NEXTDNS_ID} ${NEXTDNS_ARGUMENTS}
