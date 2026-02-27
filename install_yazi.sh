curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
cargo install --force yazi-build

# install yazi packages
ya pkg install