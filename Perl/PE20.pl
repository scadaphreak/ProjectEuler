#! /usr/bin/perl
use strict;
use warnings;
use Math::BigInt;

## CONSTANTS ##
my $sum = 0;

## MAIN ##
my $fact = Math::BigInt->new('100');
$fact->bfac();	#factorial method call from BigInt.
my @digits = split //, $fact;
foreach my $i(@digits) {
  $sum += int($i);
}
print $sum, "\n";

## SUB-ROUTINES ##



