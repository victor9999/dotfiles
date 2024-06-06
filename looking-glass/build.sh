#!/bin/bash
podman build . -t looking-glass-builder:b6
id=$(podman create looking-glass-builder:b6)
podman cp $id:/workspace/looking-glass-B6/client/build/looking-glass-client /tmp
podman rm -v $id
