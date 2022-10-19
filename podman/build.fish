#!/usr/bin/fish

set -l user $argv[1]
set -l image $argv[2]
set -l tag $argv[3]

docker build --build-arg DEVEL_USER=$user -t docker.io/tull3/$image:$tag $image/.