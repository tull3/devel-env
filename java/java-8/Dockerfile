FROM fedora:latest
RUN dnf -y module reset nodejs
RUN dnf -y module install nodejs:12/default
RUN dnf -y install git java-1.8.0-openjdk-devel maven fish

ARG DEVEL_USER
RUN useradd $DEVEL_USER