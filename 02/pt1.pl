#!/usr/bin/perl

use feature "switch";
my $filename = $ARGV[0];
my @data = ();
my $data = 0;
my $score = 0;
#print "filename is $filename\n";

open(IN,"$filename") || die "$filename can't be opened";

# given($var1)
# {
#   when (10)           { print "This is the case for number 10\n"; }
#   when ("a")          { print "This is the case for string a\n"; }
#   when ([1..10,42])   { print "This is the case for number in list\n"; }
#   when (\@array)      { print "This is the case for number in list\n"; }
#   default             { print "Default case. Previous cases not true\n"; }
# }

while (<IN>){
  chomp;
 # print "data = $_\n";
  @data = split(' ',$_);
  $data = @data;
  if ($data[0] eq 'A'){
    given ($data[1]){
      when('X') {$score = $score + 4;} # tie
      when('Y') {$score = $score + 8;} # Y wins
      when('Z') {$score = $score + 3;} # A wins
    }
  }
  elsif ($data[0] eq 'B'){
    given ($data[1]){
      when('X') {$score = $score + 1;} # B wins
      when('Y') {$score = $score + 5;} # tie
      when('Z') {$score = $score + 9;} # Z wins
    }
  }
  elsif ($data[0] eq 'C'){
    given ($data[1]){
      when('X') {$score = $score + 7;} # X wins
      when('Y') {$score = $score + 2;} # C wins
      when('Z') {$score = $score + 6;} # tie
    }
  }
print "score = $score\n";
}

#print "score = $score\n";