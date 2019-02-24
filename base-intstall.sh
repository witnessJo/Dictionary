#!/bin/bash


# git 설치
apt-get install -y git

# 환경 받기
git init
git re

# autotool 설치
apt-get install -y build-essential
apt-get install -y automake
apt-get install -y autotools-devel

# go 설치
cd
wget https://dl.google.com/go/go1.11.5.linux-amd64.tar.gz
tar -xvf go1.11.5.linux-amd64.tar.gz
echo "export GOROOT=~/go" >> ~/.bash_profile
echo "export GOPATH=~/goworks-berith" >> ~/.bash_profile
echo "export PATH=\$PATH:\$GOROOT/bin" >> ~/.bash_profile
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.bash_profile
source ~/.bash_profile
go get -u github.com/go-delve/delve/cmd/dlv


# silver searcher 설치
cd
apt-get install -y automake pkg-config libpcre3-devel zlib1g-devel liblzma-devel
git clone https://github.com/ggreer/the_silver_searcher.git
cd the_silver_searcher
./build.sh
make install


# berith 설치
cd
source .bash_profile
TARGET_PATH=$GOPATH/src/bitbucket.org/ibizsoftware
mkdir -p "$TARGET_PATH"
cd "$TARGET_PATH"
git clone https://ycjo@bitbucket.org/ibizsoftware/berith-chain.git


cd
wget http://ftp.kaist.ac.kr/gnu/emacs/emacs-26.1.tar.gz
tar -xvf emacs-26.1.tar.gz
apt-get install -y libgtk-3-devel;
apt-get install -y libxpm-devel;
apt-get install -y gnutls-devel;
apt-get install -y libncurses5-devel;
apt-get install -y libx11-devel;
apt-get install -y libxpm-devel;
apt-get install -y libjpeg-devel;
apt-get install -y libpng-devel;
apt-get install -y libgif-devel;
apt-get install -y libtiff-devel;
apt-get install -y libgtk2.0-devel;
