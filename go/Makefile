.PHONY: build all build run test fmt mod vet generate version rust-all rust-build

GO = CGO_ENABLED=1 go
GO_MAIN_SRC = ./cmd/main.go
GO_BINARY_DEST = ../bin/go-main
CARGO = cd rust && cargo

all: version mod test build

build:
	${GO} build -a -ldflags="-v -s" -o ${GO_BINARY_DEST} ${GO_MAIN_SRC}

run:
	${GO} run ${GO_MAIN_SRC}

test:
	${GO} test ./... -v -cover

fmt:
	${GO} fmt ./...

mod:
	${GO} mod tidy

vet:
	${GO} vet ./...

generate:
	${GO} generate ./...

version:
	${GO} version