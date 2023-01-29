#! /usr/bin/perl
use strict;
use warnings;

#By considering the terms in the Fibonacci sequence whose values do not exceed 
#four million, find the sum of the even-valued terms.

## CONSTANTS ##
my $num = 1;
my $a = 1;
my $b = 1;
my $sum = 0;


## MAIN ##
while ($num <= 4000000) {
  $num = $a + $b;
  if (&is_even($num)) {
#    print $num, "\n";
    $sum += $num;
  }
  $a = $b;
  $b = $num;
}
print $sum, "\n";

## SUB-ROUTINES ##

sub is_even {
  return ($_[0] % 2 == 0);
}
#-----------------------------------------------------------------------------|

