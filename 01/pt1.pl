#!/usr/bin/perl

my $filename = $ARGV[0];
my @data = ();
my $data = 0;
my $value = 0;
print "filename is $filename\n";

open(IN,"$filename") || die "$filename can't be opened";

while (<IN>){
      if ( $_ != " ")
      {
       $value = $value + $_;
      }
      else{
       push (@data,$value);
       $value = 0;

      }
}
push (@data,$value);
$data = @data;
# figure out which elf has the most calories

my $highest=0;
for (my $i=0; $i < $data ; $i++){
       if ( $data[$i] > $highest){
              $highest = $data[$i];
              $elf = $i;
       }
}
print "elf = $elf\n";
print "calories = $data[$elf]\n";