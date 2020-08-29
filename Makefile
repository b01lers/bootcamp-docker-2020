all: build

NAME = bootcamp

run:start
start:
	docker run --rm --name $(NAME) -p 5003:5003 -p 5901:5901 -p 6901:6901 -p 8888:8888 $(NAME)

build:
	docker build -t $(NAME) .
