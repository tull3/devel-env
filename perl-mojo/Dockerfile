FROM fedora:latest

RUN rm /etc/yum.repos.d/fedora-modular.repo
RUN rm /etc/yum.repos.d/fedora-updates-modular.repo
RUN dnf install -y git perl-Mojolicious perl-Mojo-Pg perl-Moo perl-DBIx-Class perl-Data-UUID fish

ARG DEVEL_USER
RUN useradd $DEVEL_USER