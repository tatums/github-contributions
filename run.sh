#!/bin/bash

letters=$1

if [[ -z $letters ]] ; then
  echo "Usage: $0 <word>"
  exit 1
fi

for letter in $(echo $letters | grep -o .); do
  file="${letter}.txt"
  touch $file
  echo "hello" | tee -a $file
  git add $file
  GIT_AUTHOR_DATE='Tues Aug 26 19:32:10 2015 -0400' GIT_COMMITTER_DATE='Tues Aug 26 19:32:10 2015 -0400' git commit -m $file
done


#touch h.txt

