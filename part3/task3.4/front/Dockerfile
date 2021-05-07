FROM ubuntu:18.04
EXPOSE 5000
ENV API_URL=http://localhost:8000
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y git curl && \
  curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install -y nodejs && \
  git clone https://github.com/docker-hy/frontend-example-docker . && \
  apt-get purge -y --auto-remove git curl && \ 
  rm -rf /var/lib/apt/lists/* && useradd -m appuser && \
  npm install && npm install -g serve

USER appuser

CMD serve -s -l 5000 dist