.PHONY: build 

all: build

build: 
	cd rust && $(MAKE) build
	cd go && $(MAKE) build