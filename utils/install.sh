# вообще на сервере до конца не работало cargo install 
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
cargo binstall -y mdbook-quiz@0.3.3 mdbook-tera@0.5.1 mdbook-last-changed@0.1.3 mdbook@0.4.25
pip3 install -r requirements.txt