RANK=$(curl -s https://tryhackme.com/api/user/rank/$USERNAME | jq '.userRank') 
TOTALUSERS=$(curl -s https://tryhackme.com/api/site-stats | jq '.totalUsers')
TOPPERCENT=$(echo "scale=10; $RANK/$TOTALUSERS*100" | bc | cut -b -4)


## read -p "Enter your TryHackMe Username: " USERNAME;
USERNAME=br0wnboi


echo "Hi $USERNAME "
echo "Rank is $RANK"
echo "Total Users is $TOTALUSERS"

echo "top percent is $TOPPERCENT"