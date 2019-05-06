//: [Previous](@previous)

import Foundation

var num: Int? = nil

if num != nil {
  print(num)
} else {
  print("empty")
}

if let n = num {
  print(n)
} else {
  print("empty")
}

if let num = num {
  print(num)
} else {
  print("empty")
}

var str: String? = "str"
guard let str = str else {
  fatalError()
}
str

num = 12
if var num = num {
  num = 34
  print(num)
}

let a: Int? = 12
let b: String? = "str"

if let num = a, let str = b, str.count > 5 {
  
}

//: [Next](@next)
