//: [Previous](@previous)

import Foundation

//: # Raw String
var str = "\"Hello\", Swift 5"
var rawStr = #""Hello", Swift 5"#

let value = 123
str = "The value is \(value)"
rawStr = #"The value is \#(value)"#


str = "Lorem\nIpsum"
rawStr = #"Lorem\#nIpsom"#
rawStr = ###"Lorem\###nIpsom"###

print("=== str =====")
print(str)

print("== raw str ======")
print(rawStr)

var zipCodeRegex = "^\\d{3}-?\\d{3}$"
zipCodeRegex = #"^\d{3}-?\d{3}$"#
let zipCode = "123-456"
if let _ = zipCode.range(of: zipCodeRegex, options: [.regularExpression]) {
  print("valid")
}

//: [Next](@next)
