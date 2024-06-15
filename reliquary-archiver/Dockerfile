from rust:latest

workdir /workspace
run apt update && apt install -y git libpcap-dev
run git clone https://github.com/IceDynamix/reliquary-archiver.git
workdir reliquary-archiver
run cargo build --release

cmd ["./target/release/reliquary-archiver", "/mnt/output.json"]
