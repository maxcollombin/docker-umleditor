FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -y socat

COPY entrypoint.sh /serveconfig

WORKDIR /serveconfig

ENTRYPOINT ["./entrypoint.sh"]
