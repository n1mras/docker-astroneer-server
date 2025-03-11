.PHONY: help build start stop

help:
	$(info ---------------------------------------------------------)
	$(info make image: build a runnable image
	$(info make run: start the server
	$(info ---------------------------------------------------------)

build:
	podman-compose build 

start:
	podman-compose up -d

stop:
	podman-compose down