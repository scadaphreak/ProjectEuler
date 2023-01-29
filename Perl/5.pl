#! /usr/bin/perl
use strict;
use warnings;

my $number = 2520;
my $found = 0;
my @div = (2..20);
my $index = 0;

while ($found != 1) {
#	print "Trying $number and $div[$index]\n";
	if ($number % $div[$index] != 0) {
#		print "Sorry but $number is divisible by $div[$index] so it failed\n";
		$number += 2;
		$index = 0;
	}
	elsif (($number % $div[$index] == 0) && ($index != 20)) {
		$index += 1;
	}
	else {
		$found = 1;
	}
}
print "The smallest number divisible by all numbers from 1-20 is $number\n";

