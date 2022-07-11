FROM debian:bullseye
RUN apt update
RUN apt install -y wget
RUN wget -O - https://github.com/OpenMediaVault-Plugin-Developers/installScript/raw/master/install | bash
