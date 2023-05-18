#//////////////////////////////////////////////////////////////////////#
#	_Dockerfile:nginx                                                  #
#//////////////////////////////////////////////////////////////////////#

FROM debian:buster

RUN apt-get update && \
	apt-get -y install nginx \
	openssl

EXPOSE 443

RUN mdkir /etc/nginx/ssl
RUN openssl req -newkey res:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/smiro.crt \
	-ketout -out /etc/nginx/ssl/smiro.key \
	-subj "/C=ES/ST=Barcelona/L=Barcelona/O=42 School/OU=smiro/CN=smiro/"

COPY conf/nginx.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]
