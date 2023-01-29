#! /usr/bin/perl
use strict;
use warnings;

# Find the sum of the primes below two million.


## CONSTANTS ##

my $ans = 0;

## MAIN ##
#TEST 1
#my $test1 = 125;
#my $test2 = 17;
#my $result1 = &is_prime($test1);
#my $result2 = &is_prime($test2);
#print "Results for $test1 is: $result1.\n", "Results for $test2 is: $result2.\n";

#TEST 2
#for my $x(2..100) {
#  my $result = &is_prime($x);
#  if ($result == 1) {
#    print "$x is prime.\n";
#  }
#}

for my $x (2..2000000) {
  if (&is_prime($x)) {
    $ans += $x;
  }
}

print "The sum of the primes is: $ans.\n";

## SUB-ROUTINES ##

sub is_prime {
  #takes a number as an argument and returns 1 if it is prime and 0 otherwise
  # &is_prime(7) 
  # ==> 1
  # &is_prime(10)
  # ==> 0

  my $num = $_[0];
  my $prime = 1;
  my $max = int(sqrt($num));
  for my $i(2..$max) {
    if ($num % $i == 0) {
      $prime = 0;
    }
    last if ($prime == 0);
  }
  return $prime;
}
