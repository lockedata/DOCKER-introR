for userdetails in `cat users.csv`
do
        user=`echo $userdetails | cut -f 1 -d ,`
	passwd=`echo $userdetails | cut -f 2 -d ,`
        useradd $user -m -p `mkpasswd $passwd` -G staff
        cp sampleSQL.r /home/$user/
	echo $user
done
