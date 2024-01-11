FROM golang:1.21.1-alpine

WORKDIR /go/src/app

COPY . .

RUN go mod download


RUN go build -o app

EXPOSE 8080

CMD ["./app"]