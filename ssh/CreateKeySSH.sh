read -p "Key Name (like id_rsa_xyz): " keyname
if [[ -f ~/.ssh/keyname ]]
then
echo "The configured SSH Key already exists."
else
echo "The configured SSH Key doesn't exist. Let's create it."
read -p "Your Email: " email
    ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/$keyname
    echo
    cat ~/.ssh/$keyname.pub
    echo
    echo "Add This Key to your Device/Account."
    echo "Test Login with key using 'ssh username@device'"
    history -c
fi
