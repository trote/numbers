#!/usr/bin/perl -w

package numbers;

use warnings;
use strict;

sub ceil($$) {
    my ( $x, $y ) = @_;

    int($x / $y) + ($x % $y != 0);
}

sub factorial($) {
    my $n = shift;

    my $res = 1;
    while ( $n > 1 ) {
        $res *= $n;
    } continue {
        $n--;
    }
    $res;
}

__END__
