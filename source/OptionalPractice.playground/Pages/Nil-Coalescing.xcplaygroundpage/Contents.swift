//: [Previous](@previous)

import Foundation

//: # Nil-Coalescing Operator

var msg = ""
var input: String? = "Swift"

if let inputName = input {
  msg = "Hello, " + inputName
} else {
  msg = "Hello, Stranger"
}

print(msg)

var str = "Hello, " + (input != nil ? input! : "Stranger")
print(str)

//: ## Syntax
//:       a ?? b
//:       OptionalExpression ?? Expression
input = nil
print("\n---------- [ nil coalescing ] ----------\n")
str = "Hello, " + (input ?? "Stranger")
print(str)
//: [Next](@next)
