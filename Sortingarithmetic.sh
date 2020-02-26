#!/bin/bash -x
#Taking three inputs and print it.
read -p "Enter the three numbers" a;
read b;
read c;
result=`echo "scale=3; $a+$b*$c" | bc -l`;
echo "1.expression a+b*c result is $result";
result1=`echo "scale=3; $a*$b+$c" | bc -l`;
echo "2.expression a*b+c result is $result1";
