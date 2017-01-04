#!/usr/bin/env perl

use strict;
use warnings;
use 5.010;
 
use Data::Dumper qw(Dumper);

say "original string array:";

my @words = ("liu m", "li yi");
 
say Dumper \@words;
 
my @sorted_words = sort @words;
 
say "sorted string array:";

say Dumper \@sorted_words;
