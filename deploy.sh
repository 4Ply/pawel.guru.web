#!/bin/sh

set -e

hugo
./build.sh
./runfile.sh
