#! /usr/bin/perl
use strict;
use warnings;

my @fib = (1, 2);
my $sum = 2;
my $next = $fib[0] + $fib[1];


while ($fib[1] < 4000000) {
	if ($next % 2 == 0) {
		#print "$next is an even number.\n";
		$sum += $next;
		@fib = ($fib[1], $next);
		$next = $fib[0] + $fib[1];
	} else {
		@fib = ($fib[1], $next);
		$next = $fib[0] + $fib[1];
	}
}
print "The sum is $sum.\n";

