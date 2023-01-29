#! /usr/bin/perl
use strict;
use warnings;
use Math::BigInt;

#What is the first term in the Fibonacci sequence to contain 1000 digits?

## CONSTANTS ##
my $a = Math::BigInt->new('1');
my $b = Math::BigInt->new('1');
my $fib = Math::BigInt->new('1');
my $count = 2;	#because 1 (where $fib starts) is the 2 term in Fib sequence.



## MAIN ##
my $len = &num_len($fib);

while ($len < 1000) {
  $fib = $a + $b;
  $a = $b;
  $b = $fib;
#  print "$fib : $len\n";
  $count++;
  $len = &num_len($fib);
}
print $count, "\n";


## SUB-ROUTINE ##
sub num_len {
  my $num = $_[0];
  my @array = split //, $num;
  return (scalar(@array));
}

