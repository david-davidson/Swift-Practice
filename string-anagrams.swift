#!/usr/bin/env xcrun swift

// Determines if two strings are anagrams

func checkForAnagram(firstWord: String, secondWord: String) -> Bool {
  
  func _makeCharHash(word: String) -> [Character: Int] { // Char !== String!
    
    var _charHash = [Character: Int]()

    for char in word {
      if _charHash[char] != nil {
        _charHash[char]! += 1 // Explicitly "unwraps" optional property
      } else {
        _charHash[char] = 1
      }
    }

    return _charHash
  }

  return _makeCharHash(firstWord) == _makeCharHash(secondWord)
}

if Process.arguments.count == 3 {
  var result = checkForAnagram(Process.arguments[1], Process.arguments[2]) // Intentionally skips first word, which is file name
  println("\(Process.arguments[1]), \(Process.arguments[2]): \(result)")
} else {
  println("That's the wrong numbers of arguments!")
}