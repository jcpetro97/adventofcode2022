#!/usr/bin/perl

my $filename = $ARGV[0];
my @data = ();
my $data = 0;
my $value = 0;
my $elf1 = 0;
my $elf2 = 0;
my $elf3 = 0;

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

for (my $i=0; $i < $data ; $i++){
       if ( $data[$i] > $elf1){
              $elf3 = $elf2;
              $elf2 = $elf1;
              $elf1 = $data[$i];
       }
       elsif ( $data[$i] > $elf2){
              $elf3 = $elf2;
              $elf2 = $data[$i];
       }
       elsif ( $data[$i] > $elf3){
              $elf3 = $data[$i];
       }

}
print "elf1 = $elf1\n elf2 = $elf2\n elf3 = $elf3\n";
my $total = $elf1 + $elf2 + $elf3;
print "total = $total\n";