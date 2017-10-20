package main

import "fmt"

func add(x int) func(int) int {
	return func(y int) int {
		return x + y
	}
}

func each(items []interface{}, callback func(...interface{}) (int, error)) {
	for _, item := range items {
		callback(item)
	}
}

func main() {
	fmt.Println(add(1)(2))
	each([]interface{}{1, 2, 3}, fmt.Println)
}
