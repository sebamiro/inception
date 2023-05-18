#//////////////////////////////////////////////////////////////////////#
#	_Dockerfile:mariadb                                                #
#//////////////////////////////////////////////////////////////////////#

FROM debian:buster

RUN apt-get update && \
	apt-get install mariadb-server

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/mariadb.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/mariadb.sh

EXPOSE 3306

ENTRYPOINT ["/usr/local/bin/mariadb.sh"]

CMD ["mysql"]
