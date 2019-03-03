FROM debian:stable-slim

LABEL maintainer="Max Henkel <mh@maxhenkel.de>"

WORKDIR /cron/

RUN apt-get update && apt-get install -y cron openssh-client sshpass wget curl rsync

ENTRYPOINT touch crontab && crontab crontab && cron -f