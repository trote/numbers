#!/usr/bin/perl -w

package numbers;

use warnings;
use strict;

use List::Util qw( reduce );

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

sub nck($$) {
    my ( $n, $k ) = @_;
    
    die "Invalid value for n: $n" if $n < 0;
    return 0 if $k < 0 or $k > $n;
    return 1 if grep { $k == $_ } (0, $n);
    return $n if grep { $k == $_ } (1, $n - 1);

    my $low_min = 1;
    my $low_max = $n < $k ? $n : $k;
    my $high_min = $n < $k ? 1 : $n - $k + 1;
    my $high_max = $n;
    
    (reduce { $a * $b } 1, $high_min .. $high_max) / (reduce { $a * $b } 1, $low_min .. $low_max);
}

__END__
