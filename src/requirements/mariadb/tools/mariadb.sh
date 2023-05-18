#//////////////////////////////////////////////////////////////////////#
#	_mariadb.sh                                                        #
#//////////////////////////////////////////////////////////////////////#

service mysql start
mysql -u root -e "CREATE DATABASE $MYSQL_DATABASE;"
mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFY BY '$MYSQL_PASSWORD'"
mysql -u root -e "GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFY BY '$MYSQL_PASSWORD' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password "$MYSQL_ROOT_PASSWORD"

exec "$@"
