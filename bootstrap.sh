#!/bin/bash

set -x -e

sudo apt update
sudo apt install -y wget curl

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rustup.sh
bash rustup.sh -y

source $HOME/.cargo/env

echo 'source $HOME/.cargo/env' >> .profile


sudo apt install -y g++


cargo install xargo

cd
curl -sf https://gitlab.redox-os.org/redox-os/redox/raw/master/bootstrap.sh -o bootstrap.sh

yes | bash -e bootstrap.sh

cd redox
make all
make qemu
