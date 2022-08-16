#!/bin/bash

local_bin=$HOME/local/bin

# package url
_d_neovim=https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz
_d_ripgrep=https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz
_d_fd=https://github.com/sharkdp/fd/releases/download/v8.4.0/fd-v8.4.0-x86_64-unknown-linux-musl.tar.gz

# proxy
# Add "--proxy http://<IP>:<PORT>" to ~/.curlrc

if [ ! -d "$local_bin" ]; then
    mkdir -p $local_bin
fi

# download package
curl -L -o $local_bin/neovim.tar.gz --create-dirs $_d_neovim
curl -L -o $local_bin/ripgrep.tar.gz --create-dirs $_d_ripgrep
curl -L -o $local_bin/fd.tar.gz --create-dirs $_d_fd

ls -al $local_bin

tar xf $local_bin/neovim.tar.gz -C $local_bin
tar xf $local_bin/ripgrep.tar.gz -C $local_bin
tar xf $local_bin/fd.tar.gz -C $local_bin

cd $local_bin
ln -s nvim-linux64/bin/nvim nvim
ln -s ripgrep-13.0.0-x86_64-unknown-linux-musl/rg rg
ln -s fd-v8.4.0-x86_64-unknown-linux-musl/fd fd

echo "Add local bin PATH:"
echo "export PATH=\$PATH:$local_bin"
