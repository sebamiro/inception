#//////////////////////////////////////////////////////////////////////#
#	_Makefile                                                          #
#//////////////////////////////////////////////////////////////////////#

all:
	@docker compose -f ./src/docker-compose.yml up -d --build

down:
	@docker compose -f ./src/docker-compose.yml down

clean:
	@docker stop $$(docker ps -qa)
	@docker rm $$(docker ps -qa)
	@docker rmi $$(docker images -qa)
	@docker volume rm $$(docker volume ls -q)
	@docker network rm $$(docker network ls -q)

.PHONY: all down clean
