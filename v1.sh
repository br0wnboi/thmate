#!/usr/bin/bash
banner -l thmate
TOTALUSERS=$(curl -s https://tryhackme.com/api/site-stats | jq '.totalUsers')
echo "Total TryHackMe Users: $TOTALUSERS"
read -p "Enter your TryHackMe Username: " USERNAME;
# Welcome User:
echo "Hi $USERNAME";
# Grab UserDetails
RANK=$(curl -s https://tryhackme.com/api/user/rank/$USERNAME | jq '.userRank') 
BADGE=$(curl -s https://tryhackme.com/api/badges/get/$USERNAME | jq '.[] | .name' | wc -l)
DONEROOMS=$(curl -s https://tryhackme.com/api/no-completed-rooms-public/$USERNAME)
echo "Rank: $RANK"
echo "Completed Rooms: $DONEROOMS"
echo "Badges Earned: $BADGE"
