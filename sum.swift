#!/usr/bin/env xcrun swift

let numbers = [1, 2, 3, 4] // To do: cast command-line args as nums, process them instead

// Sums an array of ints

func sumNumbers(numbers: [Int]) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}

println(sumNumbers(numbers))