#!/usr/bin/fish

# ./update-container java-8:1 java-11:latest perl-mojo:1 scala-2:1

for arg in $argv
    docker build -t tull3/(string split ':' $arg)[1]:(string split ':' $arg)[2] (string split ':' $arg)[1]/
end