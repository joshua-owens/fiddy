FROM golang:1.21

WORKDIR /usr/src/fiddy

COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
RUN go build -v -o /usr/local/bin/fiddy ./...

CMD ["fiddy"]