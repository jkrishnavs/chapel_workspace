#!/bin/bash
FILES=.
for i in *.chpl
do
#    echo $i
    fn="${i%.*}"
#    echo $fn
    chpl $i &>comp.txt
    diff comp.txt $fn.bad
    ./a.out &>run.txt
    diff run.txt $fn.good
    rm a.out
    rm run.txt
    rm comp.txt
done
