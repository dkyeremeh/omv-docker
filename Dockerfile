FROM debian:bullseye
ENV container docker
WORKDIR /var/omv
COPY scripts scripts
RUN scripts/install_omv.sh -n
ENTRYPOINT [ "/usr/sbin/omv-engined" ]
