all:
	@echo ...

submodule-add:
	git submodule add https://github.com/oasislabs/gsn.git oasislabs/gsn

submodule-init:
	git submodule update --init --recursive

submodule-update:
	git submodule update --remote --merge

build:
	docker build -t oasislabs/gsn:latest -f Dockerfile . 

build-relay: build
	docker build -t oasislabs/gsn:relay -f Dockerfile.relay . 

run-relay: build-relay
	docker run --rm -it oasislabs/gsn:relay
