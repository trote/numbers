#!/usr/bin/perl -w

package numbers;

use warnings;
use strict;

sub ceil($$) {
    my ( $x, $y ) = @_;

    int($x / $y) + ($x % $y != 0);
}

__END__
