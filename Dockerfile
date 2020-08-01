FROM debian:buster

RUN echo "deb http://ftp.debian.org/debian buster-backports main" | tee /etc/apt/sources.list.d/buster-backports.list
RUN apt-get update
RUN apt-get install -y gnupg
RUN apt-get install -y ca-certificates openssl
RUN apt-get install -y -t buster-backports s3cmd

RUN echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
RUN apt-get update
RUN apt-get install mongodb-org-shell mongodb-org-tools
