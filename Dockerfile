FROM nginx:1.15.0
LABEL maintainer="tomoya@mitsuse.jp"

RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/sources.list

RUN apt-get update \
    && apt-get install -y -t stretch-backports \
        certbot \
    && apt-get clean
