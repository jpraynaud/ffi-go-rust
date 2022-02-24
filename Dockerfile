###############################
# STEP 1: build rust lib
###############################
FROM rust:alpine AS rustbuilder

# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git && apk add build-base

# Wordkir
WORKDIR /app
COPY . .

# Build the binary
RUN cd rust && make

###############################
# STEP 2: build go binary
###############################
FROM golang:1.17-alpine AS gobuilder

# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache git

# Install build base
RUN apk add build-base

# Create appuser.
RUN adduser -D -g '' appuser

# Wordkir
WORKDIR /app
COPY . .

# Copy rust static lib.
COPY --from=rustbuilder /app/rust/target/release /app/rust/target/release

# Fetch dependencies.
RUN cd go && make

###############################
# STEP 3: build a small image
###############################
#FROM scratch
FROM alpine:latest

# Upgrade and install build base
RUN apk update && apk add build-base

# Import the user and group files from the builder.
COPY --from=gobuilder /etc/passwd /etc/passwd

# Copy our static executable.
COPY --from=gobuilder "/app/bin/go-main" "/bin/go-main"

#Workdir
WORKDIR /go/bin/

# Use an unprivileged user.
USER appuser

# Run the binary.
RUN /bin/go-main
ENTRYPOINT ["/bin/go-main"]