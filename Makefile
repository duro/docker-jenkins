build:
	@docker-compose build
run:
	@docker-compose up -d
stop:
	@docker-compose stop
clean:	stop
	@docker-compose rm jenkins-master jenkins-nginx
clean-data: clean
	@docker-compose rm -v jenkins-data
clean-images:
	@docker rmi $(docker images -q --filter="dangling=true")
