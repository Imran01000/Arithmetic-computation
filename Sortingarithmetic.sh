#!/bin/bash -x
#Taking three inputs and print it.
declare -A expression
read -p "Enter the three numbers" a;
read b;
read c;
echo "$a , $b , $c ";
result=`echo "scale=3; $a+$b*$c" | bc -l`;
echo "1.expression a+b*c result is $result";
result1=`echo "scale=3; $a*$b+$c" | bc -l`;
echo "2.expression a*b+c result is $result1";
result2=`echo "scale=3; $c+$a/$b" | bc -l`;
echo "3.expression c+a/b result is $result2";
result3=`echo "scale=3; $a%$b+$c" | bc -l`;
echo "4.expression a%b+c result is $result3";
expression[1]="$result";
expression[2]="$result1";
expression[3]="$result2";
expression[4]="$result3";
expression[5]="$result4";
echo "${expression[@]}"
