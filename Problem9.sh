#!/bin/bash
FILES=$(/usr/bin/ls $@)
echo $FILES $@
for f in $FILES
do
echo "Processing $f file..."
if [ `wc -m < $f` -gt 1000 ]
then
    echo "Skipping $f"
elif [ `wc -m < $f` -le 1001 ]
then
# count number of characters and output that for file $f
  wc -m $f
fi
done
