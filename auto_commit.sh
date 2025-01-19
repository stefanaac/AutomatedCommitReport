#!/bin/bash

# Ensure the Test directory exists
mkdir -p Test

for i in {1..10}; do
  # Create the task file
  touch Test/Task${i}.txt
  
  # Stage changes
  git add .
  
  # Commit the changes with a message
  git commit -m "Added task ${i}"
  
  # Push to the main branch
  git push origin main
  
  echo "Task ${i} committed and pushed successfully."
done
