.PHONY: build go-all go-build go-run go-test go-fmt go-mod go-vet go-generate go-version rust-all rust-build

GO = cd go && CGO_ENABLED=1 go
GO_MAIN_SRC = ./cmd/main.go
GO_BINARY_DEST = ../bin/go-main
CARGO = cd rust && cargo

build: 
	cd rust && $(MAKE) build
	cd go && $(MAKE) build