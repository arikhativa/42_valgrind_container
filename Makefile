
IMG=arikhativa/pool-tester:0.0.1
NAME=pool-tester

build:
	docker build -t $(IMG) .

run:
	docker run -d -it -v ~/:/valgrind/ --name $(NAME) $(IMG)

stop:
	docker rm -f $(NAME)

enter:
	docker exec -it $(NAME) bash

