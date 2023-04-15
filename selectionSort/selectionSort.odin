package main

import "core:fmt"
import "core:math/rand"

main :: proc() {

  // Filled array to test
  array := [1000]u32{}
  for i := 0; i < len(array); i += 1 {
    array[i] = rand.uint32() % 1000
  }

  fmt.printf("%v", array)

}

