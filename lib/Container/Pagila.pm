package Container::Pagila;
use v5.32;

use Exporter 'import';
our @EXPORT_OK = qw/global/;

sub global() {
    say $main::working_directory
}


return 1;