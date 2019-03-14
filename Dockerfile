FROM golang:alpine

RUN addgroup --gid 1001 gophers && \
    adduser -D --uid 1001 -G gophers gopher

USER 1001:1001
WORKDIR /home/gopher

COPY pythagoras.go /home/gopher/
RUN go build -o pythagoras pythagoras.go 

ENTRYPOINT ./pythagoras

EXPOSE 9999
