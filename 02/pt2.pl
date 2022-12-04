#!/usr/bin/perl
no warnings;
use feature "switch";
my $filename = $ARGV[0];
my @data = ();
my $data = 0;
my $score = 0;
#print "filename is $filename\n";

open(IN,"$filename") || die "$filename can't be opened";

while (<IN>){
  chomp;
 # print "data = $_\n";
  @data = split(' ',$_);
  $data = @data;
  if ($data[0] eq 'A'){
    given ($data[1]){
      when('X') {$score = $score + 3;} # You Lose  ( scissors )
      when('Y') {$score = $score + 4;} # Tie
      when('Z') {$score = $score + 8;} # You Win  ( Paper )
    }
  }
  elsif ($data[0] eq 'B'){
    given ($data[1]){
      when('X') {$score = $score + 1;} # You Lose ( Rock )
      when('Y') {$score = $score + 5;} # tie
      when('Z') {$score = $score + 9;} # You Win (Scissors)
    }
  }
  elsif ($data[0] eq 'C'){
    given ($data[1]){
      when('X') {$score = $score + 2;} # You Lose ( paper )
      when('Y') {$score = $score + 6;} # Tie
      when('Z') {$score = $score + 7;} # You Win 
    }
  }
#print "score = $score\n";
}

print "score = $score\n";