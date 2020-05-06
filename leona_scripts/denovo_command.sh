#!/bin/bash

M=$1
n=$2
m=$3
outfile=$4

#echo "Hello ${M} ${n} ${m}" > $outfile

denovo_map.pl --samples ~/kapenta/RADseq_2020/samples/demultiplexed/all_samples \
    --popmap ~/kapenta/RADseq_2020/popmaps/popmap_stolo_location.txt \
    -o ~/kapenta/RADseq_2020/pipelines/denovo/$outfile \
    -T 16 \
    -M $M -n $n -m $m --paired 

