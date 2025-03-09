VERSION=SNAPSHOT
DOCKERTAG=local/astroneer-server:$(VERSION)

.PHONY: help build run

help:
	$(info ---------------------------------------------------------)
	$(info make image: build a runnable image
	$(info make run: start the server
	$(info ---------------------------------------------------------)

build:
	podman build --pull --no-cache -t $(DOCKERTAG) -f Dockerfile .

run:
	podman-compose up
