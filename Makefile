.PHONY: build 

all: build run

build: 
	cd rust && $(MAKE) build
	cd go && $(MAKE) build

run:
	./bin/go-main