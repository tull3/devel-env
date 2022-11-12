#!/usr/bin/perl
use v5.32;

use FindBin;
use lib "$FindBin::Bin/lib";

no warnings qw(experimental::signatures experimental::re_strict);
use feature 'signatures';
use re 'strict';

use Cwd;
our $working_directory = getcwd;

# use Getopt::Long;
# my $data   = "file.dat";
# my $length = 24;
# my $verbose;
# GetOptions ("length=i" => \$length,    # numeric
#             "file=s"   => \$data,      # string
#             "verbose"  => \$verbose)   # flag
# or die("Error in command line arguments\n");

my $perl_version = `perl -v`;
my $version;

if ($perl_version =~ /version (\d\d)/) {
    $version = $1;
} else {
    return 0;
}

say $version;

use Container::Pagila qw/global/;

global();
