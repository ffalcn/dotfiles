#!/bin/bash

sudo apt-get update
sudo apt-get -y install git wget gpg curl build-essential 

## Install go
goVersion='1.20.6'
version=$(go version | cut -d\  -f3)

if [ "$version" != "go$goVersion" ]
then

  wget "https://go.dev/dl/go$goVersion.linux-amd64.tar.gz"

  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "go$goVersion.linux-amd64.tar.gz"
  rm "go$goVersion.linux-amd64.tar.gz"

  version=$(go version | cut -d\ -f3)
  if [ "$version" != "go$goVersion" ]
  then
      export PATH=$PATH:/usr/local/go
      echo "export PATH=\"\$PATH:/usr/local/go\"" >> ~/.profile
  fi

else
	echo "go version $goVersion already installed"
fi

# Install NVIM

nvimVersion='v0.9.1'
version=$(nvim --version | head -n 1 | cut -d\  -f2)

if [ "$version" != "$nvimVersion" ]
then
    echo "TODO: Install NVIM"
    # Install NVIM
fi

# Copy Configuration Files

cp -rbu ./copy/. ~/ 

# Install vim-plug

# Install NVIM Plugins

nvim -c PlugInstall -c qa
