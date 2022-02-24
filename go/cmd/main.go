package main

// NOTE: There should be NO space between the comments and the `import "C"` line.

/*
#cgo LDFLAGS: -L../../rust/target/release/ -lrustlib
#include "./rustlib.h"
*/
import "C"

func main() {
	C.hello()
}
