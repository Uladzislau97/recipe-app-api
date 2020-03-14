build:
	docker-compose build

run:
	docker-compose up

check:
	docker-compose run app sh -c "python manage.py test && flake8"

test:
	docker-compose run app sh -c "python manage.py test"

lint:
	docker-compose run app sh -c "flake8"
