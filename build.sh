#!/bin/sh

set -e

docker build -t 4ply/pawel.guru.web --no-cache -f=docker/Dockerfile .
