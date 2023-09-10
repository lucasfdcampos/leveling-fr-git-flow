#!/bin/bash
echo "Welcome to the survey!"

# Verifica se o diretório 'logs' existe, se não, cria
if [ ! -d "logs" ]; then
  mkdir logs
fi

while true; do
  read -p "Enter your name: " name
  if [ -z "$name" ]; then
    echo "Name cannot be empty."
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Name cannot be empty." >> logs/log.txt
  elif [[ ! "$name" =~ ^[a-zA-Z]+$ ]]; then
    echo "Name must contain only alphabetic characters."
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Name must contain only alphabetic characters." >> logs/log.txt
  elif [ ${#name} -ge 2 ]; then
    break
  else
    echo "The name must be at least 2 characters."
    echo "$(date +"%Y-%m-%d %H:%M:%S") - The name must be at least 2 characters." >> logs/log.txt
  fi
done

while true; do
  read -p "Enter your age: " age
  if [ -n "$age" ]; then
    break
  else
    echo "Age cannot be empty."
    echo "$(date +"%Y-%m-%d %H:%M:%S") - Age cannot be empty." >> logs/log.txt
  fi
done

echo "$name informed that they are $age years old!"
