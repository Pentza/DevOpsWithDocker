FROM ubuntu:18.04
EXPOSE 5000
ENV API_URL=http://localhost:8000
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y git curl && \
  curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install -y nodejs && \
  git clone https://github.com/docker-hy/frontend-example-docker . && \
  npm install && apt-get purge -y --auto-remove git curl && \ 
  rm -rf /var/lib/apt/lists/* && useradd -m appuser && chown -R appuser /usr/src/app

USER appuser

CMD npm start