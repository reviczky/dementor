#!/bin/sh

sources=$(cat "sites.txt")

for line in $sources
do curl $line$1/people | awk -F\, '{print $2}' | tr "\n" " "
done
