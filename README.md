将3个文件放入同一个目录下，例如/root/ansible/

# 修改batch_sshkey.sh

    user='hechunyang'     #远程主机SSH用户名，具有sudo权限

    password='123456'     #远程主机SSH密码

# 主机配置文件

    cat test_host.txt 

    192.168.32.51:22

    192.168.32.52:22

    192.168.32.53:22


# remote_operate.sh（把管理机的公钥传给远程主机）


# SSH主机批量互信认证

执行：

    shell> bash batch_sshkey.sh

![image](https://github.com/hcymysql/batch_sshkey/assets/19261879/4b231f30-f1e5-403e-9a3a-bfdc2403ca14)

