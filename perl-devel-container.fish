#!/usr/bin/fish

set -l directory (pwd)

set -l name (basename $directory)

set -l image $argv[1]

docker run -p 3000:3000 --name $name -d --mount type=bind,src=/home/$DEVEL_USER/Projects/$name,dst=/home/$DEVEL_USER/$name tull3/$image