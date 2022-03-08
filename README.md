# FFI Go/Rust

This project implements a simple FFI call of Rust library in Go:
- The Rust project is compiled as a static library
- The Go project embeds the Rust library and accesses it with CGO

---
## Pre-requisites

**Step 1: Install Golang**

- Install a [correctly configured](https://golang.org/doc/install) Go toolchain (version 1.17+). 
- Make sure that your `GOPATH` and `GOBIN` environment variables are properly set up.

**Step 2: Install Rust**

- Install a [correctly configured](https://www.rust-lang.org/learn/get-started) Rust toolchain (version 1.58.0+). 


## Download source code:
```bash
# Download sources from github
git clone https://github.com/jpraynaud/ffi-go-rust

# Go to sources directory
cd ffi-go-rust
```

## Build and run binary:
```bash
# Build
make build

# Run
make run

# or Build & Run
make
```

## Build and run Docker container:

```bash
# Build Docker image
docker build -t ffi-go-rust .

# Run Docker container
docker run --rm --name='ffi-go-rust' ffi-go-rust
```

## Verify

```bash
# When running you should see somethingg like this
Hello World in Rust
Addition=110
```