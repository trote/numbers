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

sub grey_code($) {
    my $n = shift;
    
    $n ^ $n >> 1;
}

sub rev_grey_code($) {
    my $g = shift;

    my $n = 0;
    while ( $g ) {
        $n ^= $g;
        $g >>= 1
    }
    $n;
}

sub factorial_get_prime_pow($$) {
    my ( $n, $p ) = @_;
    
    my $count = 0;
    my $ppow = $p;
    while ( $ppow <= $n ) {
        $count += int($n / $ppow);
        $ppow *= $p;
    }
    
    $count;
}

__END__
