apt-get update
apt-get install -y \
    wget \
    unzip \
    build-essential \
    openssl

curl https://sh.rustup.rs -sSf | sh -s -- -y --profile=minimal

export PATH="/root/.cargo/bin/":$PATH

curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

cargo binstall lsd bat -y

echo alias bat=\"bat --pager=never\" >> ~/.bashrc

curl -s https://ohmyposh.dev/install.sh | bash -s

echo "eval "$(oh-my-posh init bash)"" >> ~/.bashrc