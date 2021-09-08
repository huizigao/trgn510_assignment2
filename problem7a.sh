#!/bin/bash
if [ -problem7a.sh "$1" ]; then
    echo "Usage: $0 https://en.wikipedia.org/wiki/Bioinformatics"
    exit 1
fi
 
'https://en.wikipedia.org/wiki/Bioinformatics'=$1
 
while read -n 1 c
do
    echo "$c"
done < "$https://en.wikipedia.org/wiki/Bioinformatics" | grep -E '[[:alpha:]]' -o problem7a.sh | sort | uniq -c | sort -nr
~
