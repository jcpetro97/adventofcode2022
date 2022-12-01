#!/usr/bin/perl


my $filename = $ARGV[0];
my @data = ();
my $data = 0;

print "filename is $filename\n";

open(IN,"$filename") || die "$filename can't be opened";

while (<IN>){
       chomp;
       push (@data,$_);
}
$data = @data;
