# My personal package repository

This repo was created following this tutorial:
https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html

Install this repository:
```bash
export PPA_RESOURCE_URL=https://raw.githubusercontent.com/ndgnuh/ppa/refs/heads/master
curl \
    "${PPA_RESOURCE_URL}/ndgnuh-ppa.key" |
    gpg --dearmor |
    sudo tee /etc/apt/keyrings/ndgnuh-ppa.gpg 1> /dev/null
sudo curl -s --compressed \
    -o /etc/apt/sources.list.d/ndgnuh-ppa.sources \
    "${PPA_RESOURCE_URL}/ndgnuh-ppa.sources" |
sudo apt update
unset PPA_RESOURCE_URL
```
