#!/bin/bash

echo "hello world"

input="aws-resources.txt"
while IFS= read -r line
do
  echo "$line"
done < "$input"

