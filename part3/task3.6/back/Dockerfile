FROM golang:alpine AS build-stage
WORKDIR /usr/src/server
COPY ./backend .

RUN CGO_ENABLED=0 go build

FROM scratch
WORKDIR /server
EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5000


COPY --from=build-stage /usr/src/server /server

ENTRYPOINT ["./server"]