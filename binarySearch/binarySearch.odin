package main

import "core:fmt"

main :: proc() {

  // Filled array to test
  array := [1028]int{}
  for i := 0; i < len(array); i += 1 {
    array[i] = i
  }

  index, success := binarySearch(array, 2000)
  fmt.printf("Index: %v, Success: %v\n", index, success)
}

binarySearch :: proc(array: [1028]int, item: int) -> (int, int) {
  high := 1028 - 1
  low := 0

  for low <= high {
    mid := (low + high) / 2
    guess := array[mid]

    switch {
      case guess == item:
        return mid, 1 
      case guess > item:
        high = mid - 1
      case:
        low = mid + 1
    }
  }
  return 0, 0
}
