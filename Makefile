
IMG=arikhativa/42valgrind:0.0.1
NAME=42valgrind
# CLOUD_IMG=arikhativa/42valgrind:1.0.0
WORKDIR=/home

run:
	docker run -d -it -v $(HOME):$(WORKDIR)/ --name $(NAME) $(IMG)

stop:
	docker rm -f $(NAME)

re: stop run
	@true

enter:
	docker exec -it $(NAME) bash

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)
