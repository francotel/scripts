#!/bin/bash

input=$1
profile=$2
region=$3

while IFS= read -r line
do
  count=$(aws configservice get-discovered-resource-counts \
	  --resource-type $line \
	  --profile $profile \
	  --region $region \
	  --query "totalDiscoveredResources")
  echo "$line = $count"
done < "$input"

