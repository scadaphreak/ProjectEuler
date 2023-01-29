#! /usr/bin/perl
use strict;
use warnings;

## The following iterative (Collatz)  sequence is defined for the set of positive integers
# n-> n/2 (if n is even)
# n -> 3n + 1 (if n is odd)
#ie 13, 40, 20, 10, 5, 16, 8, 4, 2, 1
#Which starting number less than a million, produces the largest chain?

## CONSTANTS ##
my $start = 13;
my $factors = 0;	#number of factors in the sequence
my $biggest = 1;
## MAIN ##

#Test 1:
#my @sequence = &collatz_seq($start);
#print "The Collatz sequence of $start is: ";
#foreach my $i(@sequence) {
#  print $i, " ";
#}
#print "\n";

for my $i(1..1000000) {
  my @sequence = &collatz_seq($i);
  if (scalar(@sequence) > $factors) {
    $factors = scalar(@sequence);
    $biggest = $i;
  }
}

print "$biggest had the biggest Collatz sequence of $factors factors.\n";

## SUB-ROUTINES ##
sub even {
  my $n = $_[0];
  return ($n/2);
}
#----------------------------
sub odd {
  my $n = $_[0];
  return (3*$n +1);
}
#----------------------------
sub is_even {
  return (($_[0] % 2) == 0);
}
#----------------------------
sub collatz_seq {
  my $num = $_[0];
  my @collatz;
  push @collatz, $num;
  while ($collatz[-1] > 1) {
    if (&is_even($num)) {
      push @collatz, (&even($num));
      $num = &even($num)
    }
    else {
      push @collatz, (&odd($num));
      $num = &odd($num);
    }
  }
  return @collatz;
}

