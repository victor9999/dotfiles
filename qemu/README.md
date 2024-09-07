# Commands
```bash
sudo dnf install fedpkg make mock
fedpkg co -a qemu
cd qemu
git checkout -b f40 origin/f40
wget https://raw.githubusercontent.com/zhaodice/qemu-anti-detection/main/qemu-8.2.0.patch
git apply patch
fedpkg mockbuild --without check
```

# Patch source
https://github.com/zhaodice/qemu-anti-detection
