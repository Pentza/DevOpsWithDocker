FROM ubuntu:18.04
EXPOSE 8000
ENV FRONT_URL=http://localhost:5000
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y git curl && \
  curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install -y nodejs && \
  git clone https://github.com/docker-hy/backend-example-docker . && \
  apt-get purge -y --auto-remove git curl && \ 
  rm -rf /var/lib/apt/lists/* && useradd -m appuser && \
  npm install

USER appuser

CMD npm start