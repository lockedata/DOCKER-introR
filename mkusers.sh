for userdetails in `cat users.csv`
do
        user=`echo $userdetails | cut -f 1 -d ,`
	passwd=`echo $userdetails | cut -f 2 -d ,`
        useradd $user -m -G staff -p `mkpasswd $passwd`
        cp sampleSQL.r /home/$user/
done
cut -d: -f1 /etc/passwd
