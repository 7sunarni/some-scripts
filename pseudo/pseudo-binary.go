/*
  pseudo binary show process start up args
*/
package main

import (
	"fmt"
	"os"
)

func main() {
	args := os.Args[:] 
	s := ""

	for i, arg := range args {
		s = s + fmt.Sprintf("arg %d: %s \r\n", i, arg)
	}

	os.WriteFile("/tmp/pseudo-arggs.go", []byte(s), 0644)
}
