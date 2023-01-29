#! /usr/bin/perl
use strict;
use warnings;

#Let d(n) be defined as the sum of proper divisors of n (numbers less than n 
#which divide evenly into n).
#If d(A) = B and d(B) = A, where A != B, then A and B are an amicable pair.
#
#ie.: d(220) = 1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110 = 284
# and d(284) = 1 + 2 + 4 + 71 + 142 = 220
#
#Evaluate the sum of all the amicable numbers under 10000.

## CONSTANTS ##

my $ans;


## MAIN ##

#Test 1:
#my $test = &sum(&get_divisors(15));
#print $test, "\n";

#Test 2:
#my $test = &d(10);
#print $test, "\n";

for my $i(1..9999) {
  my $B = &d($i);
  my $A = &d($B);
  if ($A == $i && $A != $B) {
    print "$A and $B are amicable pairs.\n";
    $ans += $A;
  }
}
print "The sum of all amicable numbers under 1000 is: $ans\n";

## SUB-ROUTINES ##

sub get_divisors {
# Takes an int and returns the array of its proper divisors.
  # &get_divisors(10);
  # ==> (1,2,5)
  my $num = $_[0];
  my $max = int($num/2);
  my @divisors;
  for my $i(1..$max) {
    if ($num % $i == 0) {
      push @divisors, $i;
    }
  }
  return @divisors;
}
#-----------------------------------------------------------------------------|
sub sum {
# Takes an array of numbers and returns the sum of all of the numbers.
  # @array = (5,4,3,2,1);
  # &sum(@array);
  # ==> 15
  my $tot = 0;
  my @nums = @_;
  foreach my $i(@nums) {
    $tot += $i;
  }
  return $tot;
}
#-----------------------------------------------------------------------------|
sub d {
# Takes a number and returns the sum of its proper divisors.
  my $num = $_[0];
  my $max = int($num/2);
  my $tot = 0;
  for my $i(1..$max) {
    if ($num % $i == 0) {
      $tot += $i;
    }
  }
  return $tot;
}
#-----------------------------------------------------------------------------|
