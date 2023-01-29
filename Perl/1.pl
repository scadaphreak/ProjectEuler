#! /usr/bin/perl
use strict;
use warnings;

my @range = (1..999);
my $sum = ();

foreach my $range(@range) {
	#print "$range\n";
	if ($range % 3 == 0) {
		#print "$range\n";
		$sum += $range;
	} elsif ($range % 5 == 0) {
		#print "$range\n";
		$sum += $range;
	}
}
print "The sum is $sum.\n";
