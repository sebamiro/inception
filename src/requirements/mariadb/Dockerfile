#//////////////////////////////////////////////////////////////////////#
#	_Dockerfile:mariadb                                                #
#//////////////////////////////////////////////////////////////////////#

FROM debian:buster

RUN apt-get update && \
	apt-get install -y \
	mariadb-server

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld \
	&& chmod 777 /var/run/mysqld

EXPOSE 3306

COPY tools/mariadb.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/mariadb.sh

ENTRYPOINT [ "/usr/local/bin/mariadb.sh" ]
