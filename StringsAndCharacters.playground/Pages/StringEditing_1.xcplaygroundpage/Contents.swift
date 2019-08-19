//: [Previous](@previous)

import Foundation

//: # String Editing

//var str = "Hello"
//str.append(", ")
//str
//
//let s = str.appending("Swift")
//str
//s
//s.appending("!!")
//
//"File size is ".appendingFormat("%.1f", 12.3456)

var str = "Hello Swift"
str.insert(",", at: str.index(str.startIndex, offsetBy: 5))
if let sIndex = str.firstIndex(of: "S") {
  str.insert(contentsOf: "Awesome", at: sIndex)
}

str.insert(" ", at: str.index(str.startIndex, offsetBy: 6))
str.insert(" ", at: str.index(str.endIndex, offsetBy: -5))

str
//: [Next](@next)
