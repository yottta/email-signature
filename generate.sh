#!/usr/bin/env bash

read -p "Enter your name:" name
read -p "Enter your title:" title
read -p "Enter your phone number:" phone_number
read -p "Enter your LinkedIn profile URL:" linkedin
read -p "Enter your Github profile URL:" github

echo "Name: $name" 
echo "Title: $title"
echo "Phone Number: $phone_number"
echo "LinkedIn: $linkedin"
echo "Github: $github"

read -p "Verifiy the information and hit enter to continue generation" confirmation

sed -i "" -e "s/\[NAME\]/$name/g" -e "s/\[TITLE\]/$title/g" -e "s/\[PHONE\]/$phone/g" -e "s~\[LINKED_IN_URL\]~$linkedin~g" -e "s~\[GITHUB_URL\]~$github~g" index.html