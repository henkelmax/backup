FROM hub.maxhenkel.de/cron

LABEL maintainer="Max Henkel <mh@maxhenkel.de>"

RUN apt-get update && apt-get install -y openssh-client && apt-get install -y sshpass
