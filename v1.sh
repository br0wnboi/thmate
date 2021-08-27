#!/usr/bin/bash
USERNAME=$1
banner  thmate
TOTALUSERS=$(curl -s https://tryhackme.com/api/site-stats | jq '.totalUsers')
echo "Total TryHackMe Users: $TOTALUSERS"
# Welcome User:
echo "Hi $USERNAME";
# Grab UserDetails
RANK=$(curl -s https://tryhackme.com/api/user/rank/$USERNAME | grep -o '[0-9]*')
BADGE=$(curl -s https://tryhackme.com/api/badges/get/$USERNAME|grep -o '[0-9]*' | wc -l)
DONEROOMS=$(curl -s https://tryhackme.com/api/no-completed-rooms-public/$USERNAME | grep -o '[0-9]*')
echo "Rank: $RANK"
echo "Completed Rooms: $DONEROOMS"
echo "Badges Earned: $BADGE"
