#!/usr/bin/env bash

DBHOST=localhost
DBNAME=dbname
DBUSER=dbuser
DBPASSWD=userpass

sudo apt update && sudo apt install mysql-server -y

mysql -uroot -e "CREATE USER '$DBUSER'@'$DBHOST' IDENTIFIED BY '$DBPASSWD'";
mysql -uroot -e "CREATE USER '$DBUSER'@'%' IDENTIFIED BY '$DBPASSWD'";

mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'$DBHOST' WITH GRANT OPTION";
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' WITH GRANT OPTION";

mysql -uroot -e "CREATE DATABASE $DBNAME";

echo "" >> /etc/mysql/my.cnf
echo "[mysqld]" >> /etc/mysql/my.cnf
echo "bind-address = 0.0.0.0" >> /etc/mysql/my.cnf

sudo systemctl restart mysql
