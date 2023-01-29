#! /usr/bin/perl
use strict;
use warnings;

# There exists exactly one Pythagorean triplet for which a + b + c = 1000 and 
# a**2 + b**2 = c**2, where a<b<c. Find the product abc.

## CONSTANTS ##
my $a;
my $b;
my $c;


## MAIN ##

for my $x(1..1000) {
  for my $y(($x + 1)..1000) {
    $a = $x;
    $b = $y;
    $c = sqrt(($a**2 + $b**2));
#    print "$a, $b, $c\n";
    last if (($a + $b + $c) == 1000);
  }
  last if (($a + $b + $c) == 1000);
}

print "a:$a, b:$b, c:$c\n";

my $prod = $a*$b*$c;

print "The product is: $prod.\n";

## SUB-ROUTINES ##



