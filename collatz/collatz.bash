#!/bin/bash


echo -n > results.txt
top=$1
for i in $( seq 1 $top )
do
  num=$i
  echo -n "$num: " >> results.txt
  while [ $num -ne 1 ];
  do
    if [[ $((num % 2)) -eq 0 ]]; then
      num=$((num/2))
      echo -n "$num " >> results.txt
    else
      num=$(((num*3)+1))
      echo -n "$num " >> results.txt
    fi
  done
  echo "" >> results.txt
done

