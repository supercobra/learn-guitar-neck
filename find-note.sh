#!/bin/bash

letters=("E" "A" "D" "G" "B" "E")
prev_index=-1

while true; do
  while true; do
    index=$((RANDOM % ${#letters[@]}))
    if [ "$index" -ne "$prev_index" ]; then
      break
    fi
  done
  echo ${letters[$index]}
  prev_index=$index
  sleep 3
done
