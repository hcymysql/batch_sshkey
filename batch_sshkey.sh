#!/bin/bash
cd /root/soft/batch_sshkey-master

cat /root/.ssh/id_rsa.pub > /root/.ssh/authorized_keys

for i in `cat test_host.txt`
do
    ip=$(echo "$i"|cut -f1 -d":")
    port=$(echo "$i"|cut -f2 -d":")
    user='root'
    password='123456'

set timeout 3600
expect -c "
spawn scp -P $port /root/.ssh/authorized_keys ./remote_operate.sh  $user@$ip:/$user/
        expect {
                \"*yes/no*\" {send \"yes\r\"; exp_continue}
                \"*password*\" {send \"$password\r\"; exp_continue}
		\"password:\"  {send \"$password\r\"; exp_continue}
                \"*Password*\" {send \"$password\r\";}
        }
"
expect -c "
spawn ssh -p $port $user@$ip sudo su -c '/bin/bash /$user/remote_operate.sh'
        expect {
                \"*yes/no*\" {send \"yes\r\"; exp_continue}
                \"*password*\" {send \"$password\r\"; exp_continue}
               	\"password:\"  {send \"$password\r\"; exp_continue}
                \"*Password*\" {send \"$password\r\";}
        }
"
done

