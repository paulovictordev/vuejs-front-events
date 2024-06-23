install:
	docker run --rm --volume "./:/node/app" --workdir "/node/app" --publish 8081:8081 -it --user=node node:22 npm install
	
bash:
	docker-compose exec --user=node node bash

start:
	docker-compose up -d

restart:
	docker-compose down && docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down