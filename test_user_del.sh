for username in $(more user_del.list)
do
	if [ -n $username ]
	then
		deluser --remove-home $username	# 删除用户的主目录和邮箱
		# deluser --remove-all-files $username	# 删除用户拥有的所有文件
		echo
		echo "User $username has been deleted!"
	else
		echo "The username is null!"
	fi
done
