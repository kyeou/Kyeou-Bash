#!/bin/bash

echo -n > results.txt

for i in {1..10000}
do
  num=$i
  #if [[ $((num % 2)) -eq 0 ]]; then
  #echo "$num"
  #fi
  echo -n "$num: " >> results.txt
  echo "$num"
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

