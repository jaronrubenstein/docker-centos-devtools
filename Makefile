# Makefile

PROJECT=centos-devtools
CONTAINER=$(PROJECT)

build: Dockerfile
	docker build --no-cache=true -t $(CONTAINER) .

run: Dockerfile
	docker run --rm -it $(CONTAINER)

ls:
	docker container ls

destroy:
	docker container rm -f $(CONTAINER)
