#!/bin/bash
VERSION_NUMBER=$(cat version.txt 2>/dev/null)
VERSION_NUMBER="${VERSION_NUMBER:-1}"
cd /root/PyFlaskDockerApp/
git pull
docker build -t custom-img-pyapp:$VERSION_NUMBER .
docker run --rm -p 8000:8000 custom-img-pyapp:$VERSION_NUMBER
