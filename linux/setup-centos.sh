#!/usr/bin/env bash

# initial, as root
useradd code
passwd code
usermod -aG wheel code

# then, as code

ssh-keygen -t ed25519 -C "your_email@example.com"

sudo timedatectl set-timezone 'America/New_York'
sudo hostnamectl set-hostname example-hostname

sudo dnf install git \
	tar \
	java-17-openjdk-devel \
	nodejs

curl https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz --output maven.tar.gz
tar -xvf maven.tar.gz
rm maven.tar.gz
echo $'export PATH="$HOME/tools/apache-maven-3.8.6/bin:$PATH"' >> ~/.bashrc
echo $'export JAVA_HOME="/usr/lib/jvm/java-17"' >> ~/.bashrc

cp projects/devel-env/gitconfig .gitconfig
