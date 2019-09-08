#!/bin/bash
for filename in $(ls *.txt)
do
    echo $filename
    stripped_name=${filename%.*}
    gpg -o $stripped_name.gpg -c $filename
done
