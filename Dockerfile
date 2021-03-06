FROM golang:1.14-alpine AS build

WORKDIR /src/
COPY index.go go.* /src/
RUN CGO_ENABLED=0 go build -o /bin/demo -ldflags "-w" 

FROM scratch
COPY --from=build /bin/demo /bin/demo
ENTRYPOINT ["/bin/demo"]
