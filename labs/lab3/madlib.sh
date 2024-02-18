#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Please give me a name: " NAME

read -p "2. Please tell me a food they like: " FOOD

read -p "3. Please give me an adjective to describe the weather: " WEATHER

read -p "4. Please give me a game: " GAME

read -p "5. Please give me an adjective to describe the game: " GAME_ADJ

read -p "6. Please give me an animal: " ANIMAL

read -p "7. Please give me an adjective for the animal: " ANIMAL_ADJ

read -p "8. Please give me the name of a college course: " COURSE

echo ""

echo "Once upon a time, there was a student named $NAME. $NAME was walking to the library to work on $COURSE homework, whilst carrying $FOOD. The weather was $WEATHER and a $ANIMAL_ADJ $ANIMAL chased after them. After finally arriving at the library, they decided to play $GAME since they thought it was $GAME_ADJ. No work was done, the end."
