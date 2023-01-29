#! /usr/bin/perl
use strict;
use warnings;


#Euler discovered the remarkable quadratic formula:
#
#  n² + n + 41
#
#It turns out that the formula will produce 40 primes for the consecutive 
#values n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 
#is divisible by 41, and certainly when n = 41, 41² + 41 + 41 is clearly 
#divisible by 41.
#
#The incredible formula  n² − 79n + 1601 was discovered, which produces 80 
#primes for the consecutive values n = 0 to 79. The product of the 
#coefficients, −79 and 1601, is −126479.
#
#Considering quadratics of the form:
#
#   n² + an + b, where |a| < 1000 and |b| < 1000
#   where |n| is the modulus/absolute value of n
#   Find the product of the coefficients, a and b, for the quadratic expression 
#   that produces the maximum number of primes for consecutive values of n, 
#   starting with n = 0.


## CONSTANTS ##
my $ans_a = 0;
my $ans_b = 0;
my $primes = 0;


## MAIN ##
for my $a(-999..999) {
  for my $b(-999..999) {
    my $count = &prime_count($a, $b);
#    print "a = $a: b = $b: count = $count\n";
    if ($count > $primes) {
      $primes = $count;
#      print "$count is greater than $primes\n";
      $ans_a = $a;
      $ans_b = $b;
    }
  }
}

my $prod = $ans_a * $ans_b;
print "a = $ans_a\nb = $ans_b\nsum = $prod\n";


## SUB-ROUTINES ##

sub is_prime {
  my $num = $_[0];
  if ($num < 0) {
    $num *= -1;
  }
  for my $i(2..(sqrt($num))) {
    if ($num % $i == 0) {
      return 0;
    }
  }
  return 1;
}

#-----------------------------------------------------------------------------|

sub prime_count {
  my $a = $_[0];
  my $b = $_[1];
  my $n = 0;
  my $ans = 1;
  my $count = 0;
  while (&is_prime($ans)) {
    $ans = $n**2 + $a*$n + $b;
    $count++;
    $n++;
  }
  return $count;
}

#-----------------------------------------------------------------------------|

