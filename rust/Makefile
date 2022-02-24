.PHONY: all build test version

CARGO = cargo

all: version test build

build:
	${CARGO} build --release

test:
	${CARGO} test

version:
	${CARGO} version