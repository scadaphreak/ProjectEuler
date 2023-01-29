#! /usr/bin/perl
use strict;
use warnings;

## Find the sum of all the multiples of 3 or 5 below 1000.

my $total = 0; 
for my $i(3..999) {
  if ($i%3 == 0 || $i%5 == 0) {
    $total += $i;
  }
}
print $total . "\n";
