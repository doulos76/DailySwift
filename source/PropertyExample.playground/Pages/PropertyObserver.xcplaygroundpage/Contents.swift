//: [Previous](@previous)

import Foundation

//: # Property Obsever
class Size {
  var width = 0.0 {
    willSet {
      print(width, "=>", newValue)
    }
    didSet {
      print(oldValue, "=>", width)
    }
  }
}

let s = Size()
s.width = 123

//: [Next](@next)
