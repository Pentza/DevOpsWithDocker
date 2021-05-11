FROM golang:alpine
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000
WORKDIR /usr/src/app

COPY ./backend .

RUN go build && adduser -D appuser

CMD ./server