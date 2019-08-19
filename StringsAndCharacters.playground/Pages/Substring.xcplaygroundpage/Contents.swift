//: [Previous](@previous)

import Foundation

//: # Substring

let str = "Hello, Swift"
let l = str.lowercased()

var first = str.prefix(1)
first.insert("!", at: first.endIndex)
str
first

let newStr = String(str.prefix(1))

//str.substring(to: str.index(str.startIndex, offsetBy: 2))

let s = str[..<str.index(str.startIndex, offsetBy: 2)]

str[str.index(str.startIndex, offsetBy: 2)...]

let lower = str.index(str.startIndex, offsetBy: 2)
let upper = str.index(str.startIndex, offsetBy: 5)
str[lower...upper]

//: [Next](@next)
