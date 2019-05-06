//: [Previous](@previous)

import Foundation

var msg = ""
var input: String? = "Swift"

if let inputName = input {
  msg = "Hello, \(inputName)"
} else {
  msg = "Hello, Stranger"
}

print(msg)

var str = "Hello, " + (input != nil ? input! : "Stranger")

str = "Hello, " + (input ?? "Stranger")
print(str)

//: [Next](@next)
