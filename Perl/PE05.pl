#! /usr/bin/perl
use strict;
use warnings;

#2520 is the smallest number that can be divided by each of the numbers from 1 
#to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the 
#numbers from 1 to 20?

my $num = 2520;
my $found = 0;

while ($found == 0) {
  $num += 10;
  $found = &divisible($num);
}
print "$num is the smallest number divisible by 1..20.\n";



sub divisible {
  my $test = $_[0];
  foreach my $i(2..20) {
    if ($test % $i != 0) {
      return 0;
    }
  }
  return 1;
}
