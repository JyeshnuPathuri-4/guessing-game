#!/bin/bash

# Function to count files in the current directory
file_count() {
  ls -1 | wc -l
}

# Main game loop
actual_file_count=$(file_count)

while true; do
  echo "Guess the number of files in the current directory:"
  read user_guess

  if [[ $user_guess -lt $actual_file_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $user_guess -gt $actual_file_count ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed the correct number: $actual_file_count."
    break
  fi
done
