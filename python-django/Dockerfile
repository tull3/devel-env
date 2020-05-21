FROM fedora:latest

RUN rm /etc/yum.repos.d/fedora-modular.repo
RUN rm /etc/yum.repos.d/fedora-updates-modular.repo
RUN dnf install -y git fish python3-pip python3-django libpq-devel python3-devel
RUN dnf group install -y 'C Development Tools and Libraries'

ARG DEVEL_USER
RUN useradd $DEVEL_USER