#!/bin/perl -w

###A very dirty script for extracting all unique elemnts from a column in a dataset. ( because I use two foreach loops to find the unique values), the first one is not enough as it gives me the unique values from each line of the file. 
###However if I place it outside of the loop, it will only contain the last file line. There is probably a way to fix that using
open($fh, "<", "tabular_file.tsv") || die "Could not open file, $!";
open($out, ">", "unique_values.tsv") || die "Could not open file, $!";

###While in the tabular file, split all values within a column (in this case the 3rd column, written as 2 in perl)
while(<$fh>){
    chomp;
    @tmp=  split "\t" , $_;
    @group=split "," , $tmp[2];
    shift @group;
#    print $group[0],"\n";
    foreach(@group){
        @keyword=split ' ', $_;
#       print $keyword[1], "\n";
        my %seen;
    }
    
my %seen;

##Here each time the value has not been used before, the value is pushed inside the array. 
    foreach my $value (@keyword) {
        if (! $seen{$value}++ ) {
            push @unique, $value;
        }
    }
}

##Sort the values alphabetically
@unique=sort { $a cmp $b } @unique;

##Then output the elements in a new file in the form of a column. 
   foreach $uq (@unique){
       if (! $seen{$uq}++ ) {
           print $out $uq, "\n";
       }
}

close $out;


