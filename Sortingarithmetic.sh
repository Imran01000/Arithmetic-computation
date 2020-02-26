#!/bin/bash -x
#Taking three inputs and print it.
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

#Dictionary decleration.
declare -A expression

expression[1]=$result;
expression[2]=$result1;
expression[3]=$result2;
expression[4]=$result3;

#Printed dictionary.
echo "${expression[@]}"

#Read dictionary and store the value into array.
for((itr=1;itr<=4;itr++))
do 
	expressionArray[$itr]="${expression[$itr]}";
done
echo "${expressionArray[@]}"

#Sorting the value in descending order.
for((itr=1;itr<=4;itr++))
do 
   for((inr=1;inr<=3;inr++))
   do
      if ((`echo "${expressionArray[$inr]} < ${expressionArray[$inr+1]}" | bc -l`))
      then
         temp="${expressionArray[$inr]}";
         expressionArray[$inr]="${expressionArray[$inr+1]}";
         expressionArray[$inr+1]=$temp;
      fi
   done
done
echo "${expressionArray[@]}"

