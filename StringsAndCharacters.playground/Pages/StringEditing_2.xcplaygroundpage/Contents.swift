//: [Previous](@previous)

import Foundation

//: # Replacing Substrings

var str = "Hello, Objective-C"
if let range = str.range(of: "Objective-C") {
  str.replaceSubrange(range, with: "Swift")
}

str

if let range = str.range(of: "Hello") {
  let s = str.replacingCharacters(in: range, with: "Hi")
  s
}

var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")
s = str.replacingOccurrences(of: "swift", with: "Awesome Swift", options: [.caseInsensitive])
s

//: # Removing Substrings

str = "Hello, Awesome Swift!!!"

let lastCharacterIndex = str.index(before: str.endIndex)

var removed = str.remove(at: lastCharacterIndex)
removed
str

//: [Next](@next)
