//: [Previous](@previous)

import Foundation

//: # String Option #2

"A" < "B"

"a" < "B"

let file9 = "file9.txt"
let file10 = "fire10.txt"

file9 < file10

file9.compare(file10) == .orderedAscending

//: Regular Expression

let emailPattern = "([0-9a-zA-Z_-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}"
var emailAddress = "user@example.com"

if let result = emailAddress.range(of: emailPattern, options: [.regularExpression]), (result.lowerBound, result.upperBound) == (emailAddress.startIndex, emailAddress.endIndex)  {
  print("valid email")
} else {
  print("invalid email")
}


//: [Next](@next)
