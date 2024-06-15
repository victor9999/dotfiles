#!/bin/bash
podman build . -t looking-glass-builder:b6
mkdir -p ~/.config/obs-studio/plugins/looking-glass-obs/bin/64bit
id=$(podman create looking-glass-builder:b6)
podman cp $id:/workspace/looking-glass-B6/client/build/looking-glass-client /tmp
podman cp $id:/workspace/looking-glass-B6/obs/build/liblooking-glass-obs.so ~/.config/obs-studio/plugins/looking-glass-obs/bin/64bit/
podman rm -v $id
