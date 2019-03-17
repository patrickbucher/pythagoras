FROM golang:alpine

LABEL maintainer="Patrick Bucher <patrick.bucher@stud.hslu.ch>"

COPY pythagoras.go /go/src/
RUN go build -o /go/bin/pythagoras /go/src/pythagoras.go

EXPOSE 1337

ENTRYPOINT ["/go/bin/pythagoras"]
