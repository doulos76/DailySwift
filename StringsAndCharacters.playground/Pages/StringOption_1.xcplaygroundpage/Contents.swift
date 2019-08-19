//: [Previous](@previous)

import Foundation

//: # String Option #1

"A" == "a"
"A".caseInsensitiveCompare("a") == .orderedSame
"A".compare("a", options: [.caseInsensitive]) == .orderedSame

//: # Litieral Option

let a = "\u{D55C}"
let b = "\u{1112}\u{1161}\u{11AB}"
a == b
a.compare(b) == .orderedSame

a.compare(b, options: [.literal]) == .orderedSame

//: Backwords Option

let korean = "행복하세요"
let english = "Be happy"
let arabic = "안ㄴ녕하세요"

if let range = english.range(of: "p") {
  english.distance(from: english.startIndex, to: range.lowerBound)
}

if let range = english.range(of: "p", options: [.backwards]) {
  english.distance(from: english.startIndex, to: range.lowerBound)
}

//: # Anchored Option

//let str1 = "Swift Programming"
//if let result = str.range(of: "Swift") {
//  print(str1.distance(from: str1.startIndex, to: result.lowerBound))
//} else {
//  print("not found")
//}

//: [Next](@next)
