#!/bin/bash

apt update
apt install -y wget curl

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install xargo

cd
curl -sf https://gitlab.redox-os.org/redox-os/redox/raw/master/bootstrap.sh -o bootstrap.sh

yes | bash -e bootstrap.sh

cd redox
make all
make qemu
