//: [Previous](@previous)

import Foundation

/*:
 # Type Conversion
 
 ## Syntax
 
    Type(value)
 
 */

let a = 123
let b = 4.56
Double(a) + b // 123.0 + 4.56
a + Int(b)    // 123 + 4

let c = Int8(a)
let d = Int.max
//let e = Int8(d)

let str = "123"
let num = Int(str)

let str1 = "number"
let num2 = Int(str1)
//: [Next](@next)

//: [Next](@next)
