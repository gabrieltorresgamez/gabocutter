 lam.PHONY: help build dev-install install test test-docker

help:
	@echo "-----------------------"
	@echo "Available make targets:"
	@echo ""
	@echo "help 		- show this help"
	@echo "build 		- build the package"
	@echo "install		- install the package"
	@echo "dev-install 	- install the package in development mode"
	@echo "test 		- run the tests"
	@echo "test-docker 	- run the tests in a docker container"
	@echo "-----------------------"

build:
	python3 -m build

dev-install:
	pip install -e .

install:
	pip install .

test:
	python3 -m pytest

test-docker:
	docker-compose up

.DEFAULT_GOAL := help