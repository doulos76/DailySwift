import UIKit

//: # Strings and Characters

let s = "String"

let c: Character = "C"
c

let emptyChar: Character = " "

let emptyString = ""
emptyString.count

let emptyString2 = String()


//: # String Types
//: String ==> Swfit String
//: NSString ==>

var nsstr: NSString = "str"
let swiftStr: String = nsstr as String

nsstr = swiftStr as NSString

//: # Mutability

let immutableStr = "str"
//immutableStr = "new Str"

var mutableStr = "str"
mutableStr = "new Str"

//: # Unicode

let str = "Swift String"

str.utf8
str.utf16

var thumbUp = "👍"
thumbUp = "\u{1F44D}"


//👍
//thumbs up
//Unicode: U+1F44D, UTF-8: F0 9F 91 8D
