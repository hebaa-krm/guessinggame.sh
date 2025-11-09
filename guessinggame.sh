#!/bin/bash

# Function to count files in current directory
count_files() {
    local count=$(ls -1 | wc -l)
    echo $count
}

# Main game function
play_guessing_game() {
    local actual_count=$(count_files)
    local user_guess
    local guess_correct=false
    
    echo "Bienvenue dans le jeu de devinette !"
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    
    while [[ $guess_correct == false ]]; do
        read -p "Entrez votre estimation : " user_guess
        
        if [[ ! $user_guess =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
        elif [[ $user_guess -lt $actual_count ]]; then
            echo "Votre estimation est trop basse. Essayez encore !"
        elif [[ $user_guess -gt $actual_count ]]; then
            echo "Votre estimation est trop haute. Essayez encore !"
        else
            echo "Félicitations ! Vous avez deviné le bon nombre : $actual_count fichiers."
            guess_correct=true
        fi
    done
}

# Start the game
play_guessing_game
