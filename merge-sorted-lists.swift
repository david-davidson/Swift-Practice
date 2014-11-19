#!/usr/bin/env xcrun swift

// Merges previously sorted arrays into a single sorted array

func merge(first: [Int], second: [Int]) -> [Int] {
  var _merged = [Int]()
  var _first = first // Interesting: can't mutate arg arrays directly
  var _second = second
  var _current : Int

  while _first.count > 0 && _second.count > 0 {
    if _first[0] < _second[0] {
      _current = _first.removeAtIndex(0)
    } else {
      _current = _second.removeAtIndex(0)
    }
    _merged.append(_current)
  }
  // Ugh, gross workaround for now...
  if _first.count > 0 {
    _merged += _first
  } else if _second.count > 0 {
    _merged += _second
  }

  return _merged
}

var result = merge([1, 4, 15], [2, 3, 18])

println("merged: \(result)")