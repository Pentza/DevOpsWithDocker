FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY website.sh .

RUN chmod +x website.sh

RUN apt-get install curl -y

CMD ./website.sh


