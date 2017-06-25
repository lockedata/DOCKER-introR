for userdetails in `cat users.csv`
do
        user=`echo $userdetails | cut -f 1 -d ,`
	passwd=`echo $userdetails | cut -f 2 -d ,`
        useradd $user -m -p `mkpasswd $passwd` -G staff
        curl https://raw.githubusercontent.com/lockedata/DOCKER-introR/master/sampleSQL.r /home/$user
done
