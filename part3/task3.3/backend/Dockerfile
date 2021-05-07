# Install golang 1.16, found from README
FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY ./example-backend .

# Build project
RUN go build

ENV REQUEST_ORIGIN=http://localhost:5000

# add and change to non-root
RUN useradd -m appuser

USER appuser

CMD ./server
