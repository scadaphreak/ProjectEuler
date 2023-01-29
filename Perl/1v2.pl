#! /usr/bin/perl
use strict;
use warnings;

my $sum = ();

foreach (1..999) {
	#print "$range\n";
	if ($_ % 3 == 0 || $_ % 5 == 0) {
		$sum += $_;
	}
}
print "The sum is $sum.\n";
