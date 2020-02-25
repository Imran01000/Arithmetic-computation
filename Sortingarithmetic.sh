#!/bin/bash -x
#Taking three inputs and print it.
read -p "Enter the three numbers" a;
read b;
read c;
result=`echo "scale=3; $a+$b*$c" | bc -l`;
echo "result is $result";
