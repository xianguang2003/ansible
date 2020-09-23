#该脚本仅限第一次修改初始密码使用
mysqlinitpasswd=`grep "password is generated" /opt/mysql/log/error.log | awk '{print $NF}'`
mysql -uroot -p${mysqlinitpasswd} -S /opt/mysql/mysqld.sock -e "alter user 'root'@'localhost' identified by 'mysql';grant all on *.* to 'root'@'%'identified by 'mysql';flush privileges" --connect-expired-password
