# Commands
```bash
sudo dnf install fedpkg make mock
fedpkg co -a qemu
cd qemu
git checkout -b f40 origin/f40
wget https://raw.githubusercontent.com/zhaodice/qemu-anti-detection/main/qemu-8.2.0.patch
git apply patch
fedpkg mockbuild --without check
dnf list --installed "qemu*" | grep qemu | awk '{print $1}' | sed 's/.x86_64/-8.2.6-3.fc40.antidetection.x86_64.rpm/g' | sed 's/^/.\//g' | xargs sudo dnf install -y
```

# Patch source
https://github.com/zhaodice/qemu-anti-detection
