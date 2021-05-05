# Install golang 1.16, found from README
FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./example-backend .

# Build project
RUN go build

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ./server
