echo "what is username ?"
read base_username;

wget https://avatars.githubusercontent.com/u/10195233 -c -O $base_username
mv $base_username /var/lib/AccountsService/icons/$base_username -f


