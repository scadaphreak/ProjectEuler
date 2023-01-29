#! /usr/bin/perl
use strict;
use warnings;
use Math::BigInt;

# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

##  CONSTANTS ##


## MAIN ##
if (scalar(@ARGV) < 1) {
  print "You must include the text file containing the 100 50 digit numbers as 
 a command line argument.\n";
  die;
}

my $sum = Math::BigInt->new('0');

open (my $fh, '<', $ARGV[0])
  or die ("Could not open $ARGV[0]: $!\n");
while (<$fh>) {
  chomp;
  my $str = $_;
  my $num = Math::BigInt->new($str);
  $sum += $num;
}

my $ans = substr($sum, 0, 10);
print $ans, "\n";


## SUB-ROUTINES ##

