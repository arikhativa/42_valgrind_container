
IMG=arikhativa/pool-tester:0.0.1
NAME=pool-tester
CLOUD_IMG=arikhativa/pool-tester:0.0.1

build:
	docker build -t $(IMG) .

push:
	docker push $(IMG)

run:
	docker run -d -it -v ~/:/valgrind/ --name $(NAME) $(IMG)

run_local:
	docker run -d -it -v ~/:/valgrind/ --name $(NAME) $(IMG)

stop:
	docker rm -f $(NAME)

enter:
	docker exec -it $(NAME) bash

