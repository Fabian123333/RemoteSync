FROM arm32v7/debian
RUN apt update
RUN apt upgrade -y
RUN apt install --no-install-recommends -y rsync procps 2>&1 > /dev/null

ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
