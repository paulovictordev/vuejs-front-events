install:
	docker-compose exec --user=node node npm install

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