#! /usr/bin/perl
use strict;
use warnings;
use Math::BigInt;

## CONSTANTS ##
my $sum = 0;


## MAIN ##
my $num = Math::BigInt->new('2');
my $exp = $num**1000;
my @digits = split //,$exp;
foreach my $i(@digits) {
    $sum += int($i);
}
print $sum, "\n";


## SUB-ROUTINES ##



