//: [Previous](@previous)

import Foundation

//: # Character Set

let a = CharacterSet.uppercaseLetters

let b = a.inverted

var str = "loRem Ipsom"
var charSet = CharacterSet.uppercaseLetters

if let range = str.rangeOfCharacter(from: charSet) {
  print(str.distance(from: str.startIndex, to: range.lowerBound))
}


if let range = str.rangeOfCharacter(from: charSet, options: [.backwards]) {
  print(str.distance(from: str.startIndex, to: range.lowerBound))
}

str = " A p p l e "
charSet = .whitespaces

let trimmed = str.trimmingCharacters(in: charSet)
print(trimmed)

var editTarget = CharacterSet.uppercaseLetters

editTarget.insert("#")
editTarget.insert(charactersIn: "~!@")
editTarget.remove("A")

editTarget.remove(charactersIn: "BCD")


let customCharSet = CharacterSet(charactersIn: "@.")
let emailAddress = "userId@example.com"
let components = emailAddress.components(separatedBy: customCharSet)

//: [Next](@next)
