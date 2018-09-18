FROM hub.maxhenkel.de/cron:leatest

LABEL maintainer="Max Henkel <mh@maxhenkel.de>"

RUN apt-get update && apt-get install -y openssh-client
