前提条件：创建mysql运行用户

1）配置所要安装mysql的主机列表，内容如下。
vi /etc/ansible/hosts
[mysql]
192.168.10.70
192.168.10.71
192.168.10.72

[mysql:vars]
ansible_python_interpreter=/usr/bin/python3
ansible_ssh_user=root

2）mysqlinstall.yml文件内容如下：

- hosts: mysql
roles:
     - mysql
     
3）ansible-playbook执行安装，命令：
ansible-playbook   /opt/ansible/mysqlinstall.yml

4）验证mysql服务，可登陆认证：
mysql -uroot -pmysql  -S /opt/mysql/mysqld.sock
