#! /usr/bin/perl
use strict;
use warnings;

#Find the difference between the sum of the squares of the first one hundred 
#natural numbers and the square of the sum.


my $diff = &sqr_o_sum(100) - &sum_o_sqr(100);
print "The difference is: $diff\n";


sub sqr_o_sum {
  my $max = $_[0];
  my $sum = 0;
  foreach (1..$max) {
    $sum += $_;
  }
  return $sum**2;
}

sub sum_o_sqr {
  my $max = $_[0];
  my $sum = 0;
  foreach (1..$max) {
    $sum += ($_**2);
  }
  return $sum;
}
