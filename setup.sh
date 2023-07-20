#!/bin/bash

sudo apt-get update
sudo apt-get -y install git wget gpg curl build-essential 

goVersion='1.20.6'
version=$(go version | cut -d\  -f3)

if [ "$version" != "go$goVersion" ]
then

  wget "https://go.dev/dl/go$goVersion.linux-amd64.tar.gz"

  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "go$goVersion.linux-amd64.tar.gz"
  rm "go$goVersion.linux-amd64.tar.gz"


else
	echo "go version $goVersion already installed"
fi

cp -rn ./copy ~/ 
