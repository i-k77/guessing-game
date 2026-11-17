
#!/bin/bash

# Function to count files
function count_files {
    find . -maxdepth 1 -type f | wc -l
}

# Store the correct answer
correct_answer=$(count_files)

# Welcome message
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Continue until the correct answer is found
while true
do
    echo "Enter your guess:"
    read guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$correct_answer" ]
    then
        echo "Your guess is too low!"
    elif [ "$guess" -gt "$correct_answer" ]
    then
        echo "Your guess is too high!"
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done
