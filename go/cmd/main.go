package main

// NOTE: There should be NO space between the comments and the `import "C"` line.

/*
#cgo LDFLAGS: -L../../rust/target/release/ -lrustlib -ldl
#include "./rustlib.h"
*/
import "C"
import "fmt"

func main() {
	// 1 - Hello
	C.hello()

	// 2 - Addition
	x := C.uint32_t(10)
	y := C.uint32_t(100)
	add := uint(C.addition(x, y))
	fmt.Printf("Addition=%d\r\n", add)
}
