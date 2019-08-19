//: [Previous](@previous)

import Foundation

//: # String Basics

var str = "Hello, Swift String"

var emptyStr = ""
emptyStr = String()

let a = String(true)
let b = String(12)
let c = String(12.34)
let d = String(str)

let hex = String(123, radix: 16)
let octal = String(123, radix: 8)
let binary = String(123, radix: 2)

let repeatStr = String(repeating: "😂", count: 7)

let unicode = "\u{1f44f}"

let e = "\(a) \(b)"
let f = a + " " + b
str += "!!"

str.count
str.count == 0

str.isEmpty
str == "Apple"
str != "Apple"

"apple" < "Apple"

str.lowercased()
str.uppercased()
str
str.capitalized

"apple ipad".capitalized

for char in "Hello" {
  print(char)
}


let num = "1234567890"
num.randomElement()

num.shuffled()








//: [Next](@next)
