#!/usr/bin/fish

set -l directory $argv[1]

set -l name (basename $directory)

docker run -p 3000:3000 --name $name -d --mount type=bind,src=$directory,dst=/home/$USER/$name tull3/perl-mojo:1