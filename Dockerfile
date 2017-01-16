############################################################
# Dockerfile for Ookla Host Server
############################################################

FROM debian:jessie

# File Author / Maintainer
MAINTAINER Bartlomiej Przytarski <b.przytarski@gmail.com>
WORKDIR /data
RUN groupadd -r speedtest && useradd -r -g speedtest speedtest
RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*


RUN wget http://install.speedtest.net/ooklaserver/ooklaserver.sh && \
    chmod a+x ooklaserver.sh && \
    ./ooklaserver.sh install -f

USER speedtest
CMD ./OoklaServer

EXPOSE 8080
