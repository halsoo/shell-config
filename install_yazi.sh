sudo apt-get update
sudo apt-get install -y file
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
cargo install --force yazi-build

# add preview adddons
ya pack -a wylie102/duckdb
ya pkg add AnirudhG07/rich-preview