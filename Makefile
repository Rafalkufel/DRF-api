start:
	docker-compose up

stop:
	docker stop $$(docker ps -aqf "name=^drf-api")

bash:
	docker-compose exec app bash

test:
	docker-compose exec app python manage.py test

CONTAINER=
recreate-container:
	docker-compose up -d --force-recreate --no-deps --build $(CONTAINER)