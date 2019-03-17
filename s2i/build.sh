#!/bin/sh

docker build -t pythagoras-base - < ../base/Dockerfile
docker build -t pythagoras-s2i .
s2i build https://github.com/patrickbucher/pythagoras.git pythagoras-s2i pythagoras
docker run -p 9999:9999 -dit pythagoras
