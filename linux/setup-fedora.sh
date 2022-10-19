#!/usr/bin/env bash
sudo dnf install fedora-workstation-repositories
sudo dnf install \
	deja-dup \
	seahorse \
	gtkhash-nautilus \
	chromium \
	google-chrome-stable \
	powerline \
	vim-powerline \
	libvirt \
	kubernetes-client

echo $'powerline-daemon -q\nPOWERLINE_BASH_CONTINUATION=1\nPOWERLINE_BASH_SELECT=1\n. /usr/share/powerline/bash/powerline.sh\n' >> ~/.bashrc
echo $'export PATH="$HOME/openjdk/OpenJDK16U-jdk_x64_linux_hotspot_16.0.1_9/jdk-16.0.1+9/bin:$PATH"\nexport JAVA_HOME="$HOME/openjdk/OpenJDK16U-jdk_x64_linux_hotspot_16.0.1_9/jdk-16.0.1+9"\n\n# export PATH="$HOME/openjdk/OpenJDK11U-jdk_x64_linux_hotspot_11.0.11_9/jdk-11.0.11+9/bin:$PATH"\n# export JAVA_HOME="$HOME/openjdk/OpenJDK11U-jdk_x64_linux_hotspot_11.0.11_9/jdk-11.0.11+9"' >> ~/.bashrc
echo $'export PATH="$HOME/servers/wildfly-23.0.2.Final/bin:$PATH"' >> ~/.bashrc

systemctl --user enable --now podman.socket

sudo systemctl enable --now libvirtd

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
mv minikube-linux-amd64 ~/Downloads/minikube
chmod a+x ~/Downloads/minikube

minikube config set driver kvm2

gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>F11']"

