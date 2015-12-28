#!/usr/bin/env bash

# common packages
apt-get install -y vim wget

# latest git
apt-get remove -y git
apt-get install -y software-properties-common
add-apt-repository -y ppa:git-core/ppa
apt-get update
apt-get install -y git

# emacs 24.4
cd ~
mkdir emacs-src && cd emacs-src
wget http://mirror.team-cymru.org/gnu/emacs/emacs-24.4.tar.gz
tar xvf emacs-24.4.tar.gz

apt-get install -y build-essential
apt-get build-dep -y emacs24
cd emacs-24.4
./configure
make && make install

# install my emacs config
git clone https://github.com/dylanvaughn/emacs.git ~/emacs
echo '(setq shared-config-dir "~/emacs/")' >> ~/.emacs
echo '(load-file (concat shared-config-dir "dotemacs.el"))' >> ~/.emacs

# run emacs once to get packages, etc
emacs --script ~/.emacs

# clean up
apt-get -y autoremove
