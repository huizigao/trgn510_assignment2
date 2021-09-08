#!/bin/bash
a=$(expr $1 \* $2)
b=`echo $a + 273.15 | bc`
echo $b
