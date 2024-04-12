package libgo

import "C"
// export types:
// void(stdout)
// string
// int
// []bytes
// struct

//export String
func String(msg *C.char) *C.char {
	return C.CString(string(*msg) + "!")
}

//export Sum
func Sum(a, b C.int) C.int {
	return a + b
}
