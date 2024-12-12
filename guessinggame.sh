#!/bin/bash

# Function to play the guessing game
function guessing_game {
  # Get the number of files in the current directory
  local file_count=$(ls -1 | wc -l)

  while true; do
    # Prompt the user for a guess
    echo "How many files are in the current directory?"
    read guess

    # Check if the guess is correct
    if [[ $guess -eq $file_count ]]; then
      echo "Congratulations! You guessed the correct number of files."
      break
    elif [[ $guess -gt $file_count ]]; then
      echo "Your guess is too high. Try again."
    else
      echo "Your guess is too low. Try again."
    fi
  done
}

# Start the game
guessing_game
