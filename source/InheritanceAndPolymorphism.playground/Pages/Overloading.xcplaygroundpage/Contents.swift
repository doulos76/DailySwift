//: [Previous](@previous)

import Foundation

//: # Overloading

func process(value: Int) {
  print("process Int")
}

func process(value: String) {
  print("process String")
}

func process(value: String, anotherValue: String) {
  
}

func process(_ value: String) {
  
}

process(value: 0)
process(value: "str")

process("str")

func process(value: Double) -> Int {
  return Int(value)
}

func process(value: Double) -> String {
  return String(value)
}

let result: Int = process(value: 12.34)
let result1 = process(value: 12.34) as Int

struct Rectangle {
  func area() -> Double {
    return 0.0
  }
  
  static func area() -> Double {
    return 0.0
  }
}

let r = Rectangle()
r.area()
Rectangle.area()

//: [Next](@next)
