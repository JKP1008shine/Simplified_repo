#!/bin/bash

read a

#var=$(echo "scale=3; $a" | bc)
printf "%.3f" $(echo  "$a" | bc -l) 
