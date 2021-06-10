# syntax=docker/dockerfile:1
FROM golang:1.16 AS builder
WORKDIR /server
COPY . .
COPY ./server .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app ./server

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /server/app .
CMD ["./app"]  