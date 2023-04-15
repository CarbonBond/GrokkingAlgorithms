package main

import "core:fmt"

main :: proc() {

  // Filled array to test
  arry := [1028]int{}
  for i := 0; i < len(arry); i += 1 {
    arry[i] = i
  }

  index, success := binarySearch(arry, 2)
  fmt.printf("Index: %v, Success: %v\n", index, success)
}

binarySearch :: proc(arry: [1028]int, number: int) -> (index, success: int) {
  index = arry[number]
  success = number
  return index, success
}
