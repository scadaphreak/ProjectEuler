#! /usr/bin/perl
use strict;
use warnings;


#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143?

my $max = 600851475143;
my $guess = 1;

foreach (3..$max) {
  $guess = $max/$_;
  last if ($max % $_ == 0 && &prime($guess) == 1)
}

print "The largest prime factor of $max is $guess.\n";

sub prime {
  my $num = $_[0];
  foreach my $n(3..(int($num/3))) {
    if ($num % $n == 0) {
      return 0;
    }
  }
  return 1;
}
