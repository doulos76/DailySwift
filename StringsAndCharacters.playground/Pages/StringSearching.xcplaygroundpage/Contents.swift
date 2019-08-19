//: [Previous](@previous)

import Foundation

//: # String Searching

let str = "Hello, Swift"
str.contains("swift")
str.lowercased().contains("swift")

str.range(of: "Swift")
str.range(of: "swift", options: [.caseInsensitive])

let str2 = "Hello, Programming"
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2)
common = str.commonPrefix(with: str3)
str.commonPrefix(with: str3, options: [.caseInsensitive])
str3.commonPrefix(with: str, options: [.caseInsensitive])
//: [Next](@next)
