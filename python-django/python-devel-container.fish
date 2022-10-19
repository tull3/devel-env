#!/usr/bin/fish

set -l directory $argv[1]

set -l name (basename $directory)

docker run --name $name -it --mount type=bind,src=$directory,dst=/home/$USER/$name tull3/python-django:1