#!bin/sh

#//////////////////////////////////////////////////////////////////////#
#	_wordpress.sh                                                      #
#//////////////////////////////////////////////////////////////////////#

if [ -f ./wp_config.php]
then
	echo "Wordpress already exists"
else
	wget https://wordpress.org/wordpress-6.2.tar.gz
	tar xfz wordpress-6.2.tar.gz
	mv wordpress/*
	rm -rf wordpress-6.2.tar.gz
	rm -rf wordpress

	sed -i "s/username_here/smiro/g" wp-config-sample.php
	sed -i "s/password_here/1234/g" wp-config-sample.php
	cp wp-config-sample.php wp_config.php
fi

exec "$@"
