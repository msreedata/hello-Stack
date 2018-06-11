FROM golang:1.8 as builder
MAINTAINER ops@adhocteam.us
WORKDIR /go/src/app
COPY . .
RUN CGO_ENABLED=0 go build -o app .

FROM alpine:latest
MAINTAINER ops@adhocteam.us
WORKDIR /root/
COPY --from=builder /go/src/app/app .
EXPOSE 80
CMD ["./app"]
