ini:
	docker-compose build
	docker-compose up -d
	docker exec python django-admin startproject app .

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d

py:
	docker exec -it python bash
repy:
	docker restart python
ng:
	docker exec -it nginx bash
db:
	docker exec -it mysql mysql -u polisadmin -p
red:
	docker exec -it redis bash

remote:
	git checkout main
	git merge develop
	git push
	git checkout develop

maintain:
	docker stop nginx