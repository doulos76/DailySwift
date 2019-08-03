//: [Previous](@previous)

import Foundation

/*:
 # Type Safety
 */

//let str: String = 123
//let num: Int = 12.34

//let a = 7
//let b: Int8 = a

// 자료형의 이름이 다르면 저장할 수 없음

let a = 12
let b = 34.56
//let result = a + b

let rate = 1.94
let amt = 10_000_000
let result = rate * Double(amt)

Int(rate * Double(amt))
Int(rate) * amt

//: [Next](@next)
