package main

import (
	"C"
	"fmt"
)

//export PrintConsole
func PrintConsole(msg string){
	fmt.Println(msg)
}

//export Sum
func Sum(a, b int) int {
	return a + b;
}

func main(){}
