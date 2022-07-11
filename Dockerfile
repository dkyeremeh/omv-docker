FROM debian:bullseye

ENV container docker
WORKDIR /var/omv
COPY scripts scripts

RUN scripts/install.sh
ENTRYPOINT [ "/var/omv/scripts/start.sh" ]
