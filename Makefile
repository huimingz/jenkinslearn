build:
	docker build -t simple-django-on-docker -f Dockerfile .

run:
	docker run --rm -it -p 8086:8000 simple-django-on-docker
