build:
	docker-compose build

run:
	docker-compose up

check:
	docker-compose run app sh -c "python manage.py test && flake8"

test:
	docker-compose run app sh -c "python manage.py test"

coverage:
	docker-compose run app sh -c "coverage run --source='.' manage.py test"

coverage-report:
	docker-compose run app sh -c "coverage report"

coverage-xml:
	docker-compose run app sh -c "coverage xml"

lint:
	docker-compose run app sh -c "flake8"

migrate:
	docker-compose run app sh -c "python manage.py migrate"

makemigrations:
	docker-compose run app sh -c "python manage.py makemigrations"
