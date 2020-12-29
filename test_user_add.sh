for username in $(more users.list)
do
	if [ -n $username ]
	then
		useradd -d /home/$username -s /bin/bash -m $username
		echo
		# echo $ username"123" | paswd --stdin $username
		# echo $ username":"'123456' | chpasswd
		echo "$username:123456" | chpasswd
		echo
		echo "User $username's password has been changed!"
	else
		echo "The username is null!"
	fi
done

