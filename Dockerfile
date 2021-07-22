FROM golang:latest

WORKDIR /usr/src/app

COPY . .

EXPOSE 3000

CMD ["go","run","index.go"]
