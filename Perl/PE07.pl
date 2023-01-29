#! /usr/bin/perl
use strict;
use warnings;

#What is the 10001st prime number?


## CONSTANTS ##
my $count = 1;
my $num = 3;

## MAIN ##
while ($count < 10001) {
  if (&is_prime($num) == 1) {
#    print "$num is a prime number.\n";
    $count++;
    $num++;
  }
  else {
    $num++;
  }
}
$num--;	#remove the last ++ from the while loop.
print "The $count prime number is $num.\n";


## SUB-ROUTINES ##
sub is_prime {
  my $num = $_[0];
  my $max = sqrt($num);
  my $prime = 1;
  for my $i(2..$max) {
    if ($num % $i == 0) {
      $prime = 0;
      last;
    }
  }
  return $prime;
}

