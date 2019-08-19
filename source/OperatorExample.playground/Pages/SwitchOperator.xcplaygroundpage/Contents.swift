//: [Previous](@previous)

import Foundation

//: where
let num = 1
switch num  {
case let n where n <= 10:
  print(n)
default:
  print("others")
}

//: Interval Matching

let temperature = -8
switch temperature {
case ..<10:
  print("Cold")
case 11...20:
  print("Cool")
case 21...27:
  print("Warm")
case 28...:
  print("Hot")
default:
  break
}

//: fallthrough

let number = 2
switch number {
case 1:
  print("one")
case 2:
  print("two")
  fallthrough
case 3:
  print("three")
default:
  break
}


let attempts = 10

switch attempts {
case ..<10:
  print("warning")
case 10:
  print("warning")
  fallthrough
default:
  print("reset")
}

//: [Next](@next)
