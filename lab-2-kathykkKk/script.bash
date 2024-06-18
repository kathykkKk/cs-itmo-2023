#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Error: no argumets given."
  exit 1
fi

ip_address=$1

if ! [[ $ip_address =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
  echo "Error: Invalid IPv4 address format."
  exit 1
fi

for i in $(echo $ip_address | tr '.' ' '); do
  if [[ $i -lt 0 || $i -gt 255 ]]; then
    echo "Error: Invalid IPv4 address - numbers must be between 0 and 255."
    exit 1
  fi
done


parts=(`echo $ip_address | tr '.' ' '`)

for i in "${!parts[@]}"; do
  parts[$i]=`echo "obase=2;ibase=10;${parts[$i]}" | bc`
  parts[$i]=`printf "%08d" ${parts[$i]}`
done

echo "${parts[@]}" | tr ' ' '.'

