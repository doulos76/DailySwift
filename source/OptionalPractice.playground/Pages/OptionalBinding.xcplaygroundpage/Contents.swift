//: [Previous](@previous)

import Foundation

//: # Optional Binding

//: ## Syntax
//:     if let name: Type = OptinalExpression {
//:        statements
//:      }
//:      while let name: Type = OptinalExpression {
//:         statements
//:      }
//:     guard let name: Type = OptinalExpression else {
//:         statements
//:      }
//:

var num: Int? = nil

if num != nil {
  print(num!)
} else {
  print("empty")
}

if let num = num {
  print(num)
}  else {
  print("empty")
}


var str: String? = "str"
guard let str = str else {
  fatalError()
}

str

num = 123
if var num = num {
  num = 456
  print(num)
}

let a: Int? = 12
let b: String? = "strstr"

if let num = a, let str = b, str.count > 5 {
  print("OK")
}

//: [Next](@next)
