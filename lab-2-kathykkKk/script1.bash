#!/bin/bash

a=$1
if [[ $a -eq 23 ]]
then
   echo "Modify me!"
   echo $(($a + 19)) 
else
   echo "'$a' is not '23'"
fi
