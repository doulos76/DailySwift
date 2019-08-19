//: [Previous](@previous)

import Foundation

//: # Optionals

let optionalNumber: Int? = nil
//print(optionalNumber)

//: # Optional Type

let str: String = "Swift"
let optionalStr: String? = nil

let a: Int? = nil

let b = a


//: Unwrapping
var num: Int? = nil
print(num)

num = 123
print(num)

let n = 123
print(n)

//: Forced Unwrapping
print(num)
print(num!)

num = nil

if num != nil {
  print(num!)
}

num = 123
let before = num
let after = num!

//: [Next](@next)
