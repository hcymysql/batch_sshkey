1）修改batch_sshkey.sh

ip=$(echo "$i"|cut -f1 -d":")

port=$(echo "$i"|cut -f2 -d":")

user='hechunyang' #远程主机SSH用户名，具有sudo权限

password='123456' #远程主机SSH密码

2）主机配置文件

# cat test_host.txt 

192.168.32.51:22

192.168.32.52:22

192.168.32.53:22

3)remote_operate.sh（把管理机的公钥传给远程主机）

4)SSH主机批量互信认证

# bash batch_sshkey.sh

