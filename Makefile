VERSION=SNAPSHOT
DOCKERTAG=local/astroneer-server:$(VERSION)

.PHONY: help build start stop

help:
	$(info ---------------------------------------------------------)
	$(info make image: build a runnable image
	$(info make run: start the server
	$(info ---------------------------------------------------------)

build:
	podman build --pull --no-cache -t $(DOCKERTAG) -f Dockerfile .

start:
	podman-compose -f podman-compose.yml up -d

stop:
	podman-compose -f podman-compose.yaml down
