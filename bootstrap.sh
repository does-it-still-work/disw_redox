#!/bin/bash

apt update
apt install -y fish wget curl yes

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cd
curl -sf https://gitlab.redox-os.org/redox-os/redox/raw/master/bootstrap.sh -o bootstrap.sh

yes | bash -e bootstrap.sh

cargo install xargo

cd redox
make all
make qemu
