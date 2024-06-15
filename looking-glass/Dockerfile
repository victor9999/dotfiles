from debian
workdir /workspace
run apt-get update && apt-get install -y binutils-dev cmake fonts-dejavu-core libfontconfig-dev \
    gcc g++ pkg-config libegl-dev libgl-dev libgles-dev libspice-protocol-dev \
    nettle-dev libx11-dev libxcursor-dev libxi-dev libxinerama-dev \
    libxpresent-dev libxss-dev libxkbcommon-dev libwayland-dev wayland-protocols \
    libpipewire-0.3-dev libpulse-dev libsamplerate0-dev wget libobs-dev
run wget https://looking-glass.io/artifact/stable/source
run tar -xvzf source
workdir looking-glass-B6/client/build
run cmake -DENABLE_BACKTRACE=no -DENABLE_X11=no -DENABLE_PULSEAUDIO=no -DCMAKE_BUILD_TYPE=Release ..
run make
workdir /workspace/looking-glass-B6/obs/build
run cmake -DCMAKE_BUILD_TYPE=Release ..
run make
