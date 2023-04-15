package main

import "core:fmt"
import "core:math/rand"

main :: proc() {

  // Filled array to test
  array := [1000]u32{}
  for i := 0; i < len(array); i += 1 {
    array[i] = rand.uint32() % 1000 + 1
  }

  fmt.printf("\n%v\n", array)

  index := findSmallest(array)
  fmt.printf("Index: %v, Value: %v \n", index, array[index] )

}

findSmallest :: proc(array: [1000]u32) -> (index: int) {
  min : u32 = 1000
  for value, i in array {
    if value < min {
      min = value
      index = i
    }
  }
  return
}

