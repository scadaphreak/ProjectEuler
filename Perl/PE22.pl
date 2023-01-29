#! /usr/bin/perl
use strict;
use warnings;
use List::MoreUtils qw(first_index);


#Then working out the alphabetical value for each name, multiply this value by 
#its alphabetical position in the list to obtain a name score.
#For example, when the list is sorted into alphabetical order, COLIN, which is 
#worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN 
#would obtain a score of 938 × 53 = 49714.

## CONSTANTS ##
my @sorted_names;
my $total = 0;
my $name_count = 0;

## MAIN ##

#Read in the text file of names, strip away the quptes, place each name in an 
#alphabetical order array.
open (my $fh, '<', "names.txt")
  or die ("Could not open names.txt : $!\n");
while (<$fh>) {
  chomp;
  my @names = split /,/, $_;
  foreach my $i(@names) {
    $i =~ /"([A-Z]+)"/;
    my $name = $1;
#    print $name, "\n";
    push @sorted_names, $name;
  }
  @sorted_names = sort @sorted_names;
}

#foreach my $i(@sorted_names) {
#  print $i, "\n";
#}

for my $i(@sorted_names) {
  $name_count++;
  $total += &name_score($i, $name_count);
}

print "The total of all the name scores is: $total.\n";


#Test 1
#my $test_name = "joseph";
#my $test_score = &name_score($test_name, 1);
#print "The score for Joseph is: $test_score.\n";


#foreach (@sorted_names) {
#  print $_, "\n";
#}


## SUB-ROUTINES ##
sub name_score {
#takes a name and its index and returns the name score.
  my $name = $_[0];
  my $index = $_[1];
  my $score = 0;
  my @name = split //, $name;
  for my $i(@name) {
    $score += &letter_score($i);
  }
  return ($score * $index);
}

sub letter_score {
  my $letter = $_[0];
  my @alpha = ("A".."Z");
  my $index = (first_index { /$letter/ } @alpha) + 1;
  return $index;
}


