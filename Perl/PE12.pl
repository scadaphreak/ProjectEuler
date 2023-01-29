#! /usr/bin/perl
use strict;
use warnings;

## CONSTANTS ##

#The answer is 76576500. THis program takes 233minutes to solve it.

my $testVal = 1;

## MAIN ##

#Test 1:
#my $triNum = &triangle_num(7);
#print "The seventh triangle number is: $triNum.\n";

#Test 2
#my $val = 25;
#my $ans = &num_factors($val);
#print "25 has $ans factors.\n";

while (1 == 1) {
  my $triangle = &triangle_num($testVal);
  my $factors = &num_factors($triangle);
  last if ($factors >= 500);
  $testVal++
}

my $ans = &triangle_num($testVal);
print "\n$ans has at least 20 factors.\n";



## SUB-ROUTINES ##

sub triangle_num {
  #Takes a number and returns the triangle number (sum of 1..number).
  #&triangle_num(7);
  #==> 28
  #&triangle_num(3);
  #==> 6
  my $max = $_[0];
  my $num;
  for my $i (1..$max) {
    $num += $i;
  }
  return $num;
}

sub num_factors {
  #Takes a number and returns the number of factors including 1 and itself.
  #&num_factors(10);
  #==> 4
  #&num_factors(25);
  #==> 3
  my $num = $_[0];
  my $max_div = int($num/2);
  my @factors = qw ($num);
  for my $i (1..$max_div) {
    if ($num % $i == 0) {
      push @factors, $i;
    }
  }
  return scalar(@factors);
}
