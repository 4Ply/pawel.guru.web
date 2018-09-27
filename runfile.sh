#!/bin/sh

docker kill pawel.guru.web
docker rm pawel.guru.web

set -e

docker run -d \
    --name pawel.guru.web \
    --restart always \
    -p 1316:80 \
    --cpuset-cpus "0,1" \
    4ply/pawel.guru.web:latest
