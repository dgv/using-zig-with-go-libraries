package libgo

import (
	"unsafe"
	"C"
)
// export types:
// void(stdout)
// string
// int
// []bytes
// struct

//export Stderr
func Stderr() {
	println("stderr")
}

//export Sum
func Sum(a, b C.int) C.int {
	return a + b
}

//export String
func String(msg *C.char) *C.char {
	return C.CString(string(*msg) + "!")
}

//export Buffer
func Buffer(str *C.char) unsafe.Pointer {
	return C.CBytes([]byte(string(*str)))
}
