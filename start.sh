#!/bin/bash
echo "Welcome to the survey!"

while true; do
  read -p "Enter your name: " name
  if [ ${#name} -ge 2 ]; then
    break
  else
    echo "The name must be at least 2 characters."
  fi
done

while true; do
  read -p "Enter your age: " age
  if [ -n "$age" ]; then
    break
  else
    echo "Age cannot be empty."
  fi
done

echo "The user $name reported being $age years old!"