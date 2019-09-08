#!/bin/bash
for filename in $(ls *.gpg)
do 
    striped_name=${filename%.*}
    gpg -d $filename >> $striped_name.txt
    echo $striped_name
done
