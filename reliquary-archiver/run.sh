#!/bin/bash
set -e
podman build . --tag reliquary-archiver:latest
podman run --rm -it --net=host -v "$(pwd):/mnt" --privileged reliquary-archiver:latest
