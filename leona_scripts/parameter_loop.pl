#!/bin/perl -w

@b=(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18);
@m=(10, 10, 10, 10, 10, 10, 10, 10, 10, 20, 20, 20, 20, 20, 20, 20, 20, 20);
@M=(2, 5, 10, 2, 5, 10, 2, 5, 10, 2, 5, 10, 2, 5, 10, 2, 5, 10);
@n=(1, 1, 1, 5, 5, 5, 10, 10, 10, 1, 1, 1, 5, 5, 5, 10, 10, 10);


##foreach $i (0 ..$#b){
    ##$outfile="denovo$b[$i].txt";
    ##open($out, ">", $outfile);
    ##print $out "command"," ",$m[$i]," ",$M[$i]," ",$n[$i],"\n";
    ##    close $out;
#}

foreach $i (0 ..$#b){
    $outfile="denovo$b[$i].txt";
    system("./denovo_command.sh", $m[$i],$M[$i],$n[$i],$outfile);
}

