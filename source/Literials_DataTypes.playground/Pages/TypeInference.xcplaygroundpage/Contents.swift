//: [Previous](@previous)

import Foundation

/*:
 # Type Infrence
 */

let num = 123
type(of: num)

let temp = 11.2
type(of: temp)

let str = "Swift"
type(of: str)

let isValid = true
let hasID = false
type(of: isValid)
type(of: hasID)

//let value

/*:
 # Type Annotation
 
 ## Syntax
 
    let name: Type = value
    var name: Type = value
 
 */

let num1: Int = 123
let value1: Double
value1 = 12.3

let ch1: Character = "c"

//let value

/*:
 # Type Inference Rules
 
    123     ----> Int
    1.23    ----> Double
    "hello" ----> String
    true    ----> Bool
    false   ----> Bool
 
 */

//: [Next](@next)
