FROM fedora:latest
RUN rm /etc/yum.repos.d/fedora-modular.repo
RUN rm /etc/yum.repos.d/fedora-updates-modular.repo
RUN dnf install -y git nodejs
RUN npm install -g @angular/cli @angular/common @angular/core @angular/forms @angular/platform-browser rxjs zone.js bootstrap @ng-bootstrap/ng-bootstrap