FROM node:alpine
EXPOSE 5000
ENV API_URL=http://localhost:8000
WORKDIR /usr/src/app

RUN apk add --no-cache git && \
  git clone https://github.com/docker-hy/frontend-example-docker . && \
  npm install && apk del git && \
  adduser -D appuser && chown -R appuser /usr/src/app

USER appuser

CMD npm start
