#!/bin/sh
VERSION=0.10.4


# Download
if [ ! -x usr/local/bin/nvim ]; then
    wget "https://github.com/neovim/neovim/releases/download/v${VERSION}/nvim-linux-x86_64.appimage" -O nvim
    chmod 755 nvim
    mkdir usr/local/bin/ -p
    mv nvim usr/local/bin
fi


cd ..
dpkg-deb --build --root-owner-group neovim-appimage
cd -
