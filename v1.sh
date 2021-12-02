#!/usr/bin/bash
echo -e "
████████╗██╗░░██╗███╗░░░███╗░█████╗░████████╗███████╗
╚══██╔══╝██║░░██║████╗░████║██╔══██╗╚══██╔══╝██╔════╝
░░░██║░░░███████║██╔████╔██║███████║░░░██║░░░█████╗░░
░░░██║░░░██╔══██║██║╚██╔╝██║██╔══██║░░░██║░░░██╔══╝░░
░░░██║░░░██║░░██║██║░╚═╝░██║██║░░██║░░░██║░░░███████╗
░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝ \n
Made by @br0wnboi
https://github.com/br0wnboi https://twitter.com/br0wnboi \n
Your CTF mate for everything CTFs \n"

TOTALUSERS=$(curl -s https://tryhackme.com/api/site-stats | jq '.totalUsers')

echo "Total TryHackMe Users: 🌐$TOTALUSERS"
read -p "Enter your TryHackMe Username: " USERNAME;
echo " "
# Welcome User:
RANK=$(curl -s https://tryhackme.com/api/user/rank/$USERNAME | jq '.userRank')
TOPPERCENT=$(echo "scale=10; $RANK/$TOTALUSERS*100" | bc | cut -b -4)
echo "Hi 🤖$USERNAME"
echo -e "You're in the Top 🔝$TOPPERCENT%"

# Grab UserDetails
 
BADGE=$(curl -s https://tryhackme.com/api/badges/get/$USERNAME | jq '.[] | .name' | wc -l)
DONEROOMS=$(curl -s https://tryhackme.com/api/no-completed-rooms-public/$USERNAME)

echo "Rank: 🏅$RANK"
echo "Completed Rooms: 🚪$DONEROOMS"
echo "Badges Earned: 👾$BADGE"
