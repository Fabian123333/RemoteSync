FROM debian:10
RUN apt update
RUN apt upgrade -y
RUN apt install --no-install-recommends -y rsync ssh procps cifs-utils

ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]