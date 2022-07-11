FROM debian:bullseye
ENV container docker
RUN apt update
RUN apt install -y wget systemd
RUN wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | bash
