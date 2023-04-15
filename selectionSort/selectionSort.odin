package main

import "core:fmt"
import "core:math"
import "core:math/rand"

main :: proc() {

  // Filled array to test
  array := [50]u32{}
  for i := 0; i < len(array); i += 1 {
    array[i] = rand.uint32() % 50
  }
  array = selectionSort(array)

  fmt.printf("\n%v\n", array)
}

selectionSort :: proc(array: [50]u32) -> [50]u32 {
  array := array
  newArray :=  [50]u32{}
  for i := 0; i < len(array); i += 1 {
    index := findSmallest(array, i, len(array)-1)
    newArray[i] = array[index]
    array[index] = array[i]
    array[i] = newArray[i]
  }
  return newArray
}

findSmallest :: proc(array: [50]u32, start: int, end: int) -> (index: int) {
  min : u32 = 4294967295
  for i := start; i <= end; i += 1{
    if array[i] < min {
      min = array[i] 
      index = i
    }
  }
  return
}

