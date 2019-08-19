//: [Previous](@previous)

import Foundation

//: # String Comparison

let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

largeA == smallA
largeA != smallA

largeA < smallA
largeA < b
smallA < b

largeA.compare(smallA) == .orderedSame
largeA.caseInsensitiveCompare(smallA) == .orderedSame

largeA.compare(smallA, options: [.caseInsensitive]) == .orderedSame

let str = "Hello, Swift Programming!"
let prefix = "hello"
let suffix = "Programming"

str.lowercased().hasPrefix(prefix.lowercased())
str.hasSuffix(suffix)



//: [Next](@next)
