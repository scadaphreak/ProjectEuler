#! /usr/bin/perl
use strict;
use warnings;

## Find the largest palindrome made from the product of two 3-digit numbers.

##  MAIN  ##

my @a = (100..999);
my @b = (100..999);
my $solution = 0; #variable to keep track of whether a solution has been found
my $guess_a;
my $guess_b;
my $pal_prod = 1;

foreach my $num_a(@a) {
  foreach my $num_b(@b) {
    my $prod = $num_a * $num_b;
#    print "Trying $prod:\n";
    $solution = &palindrome($prod);
#    print "The value of solution is $solution.\n";
    if ($solution == 1 and $prod > $pal_prod) {
      $guess_a = $num_a;
      $guess_b = $num_b;
      $pal_prod = $prod;
    }
  }
  shift @b; #reduce the size of @b to eliminate duplicate tries.
}

print "The product of $guess_a and $guess_b is $pal_prod and IS a palindrome.\n";

##  SUB-ROUTINES  ##

sub palindrome {
  my $product = $_[0];
  my @prod = split //, $product;
  my $same = 1;

  while ($same == 1 and (length(@prod > 1))) {
    my $front = shift @prod;
    my $back = pop @prod;
#    print "Trying $front and $back.\n";
    if ($front != $back) {
      $same = 0;
    }
  }
  if ( $same == 1 ) {
    return 1;
  }
  else {
    return 0;
  }
}
