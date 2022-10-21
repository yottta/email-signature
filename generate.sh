#!/usr/bin/env bash

read -p "Enter your name:" name
read -p "Enter your title:" title
read -p "Enter your phone number:" phone_number
read -p "Enter your web site URL:" site_url
read -p "Enter your LinkedIn profile URL:" linkedin
read -p "Enter your Github profile URL:" github

site=`echo $site_url | sed -e "s~http://~~" -e "s~https://~~" -e "s~/~~g"`

echo "Name: $name" 
echo "Title: $title"
echo "Phone Number: $phone_number"
echo "Personal site URL: $site_url"
echo "Site name: $site"
echo "LinkedIn: $linkedin"
echo "Github: $github"

read -p "Verifiy the information and hit enter to continue generation" confirmation

sed -i "" -e "s~\[NAME\]~$name~g" -e "s~\[TITLE\]~$title~g" -e "s~\[PHONE\]~$phone_number~g" -e "s~\[SITE_URL\]~$site_url~g" -e "s~\[SITE\]~$site~g" -e "s~\[LINKED_IN_URL\]~$linkedin~g" -e "s~\[GITHUB_URL\]~$github~g" index.html