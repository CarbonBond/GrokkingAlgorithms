package main

import "core:fmt"

main :: proc() {

  index, success := binarySearch(0, 1);
  fmt.printf("Index: %v, Success: %v\n", index, success)

}

binarySearch :: proc(arry: int, number: int) -> (index: int, success: int) {
  index = arry
  success = number
  return index, success
}
