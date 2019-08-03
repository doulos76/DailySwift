//: [Previous](@previous)

import Foundation

/*:
 # Number Literials
 */

0.23
1.23e4
0xAp2
1_000_000

10
0b1010
0o12
0xA

/*:
 # Int Data Type
 - Int
 - Int8
 - Int32
 - Int64
 */

Int8.min
Int8.max

/*:
 # Signed vs Unsigned
 - Signed
 - Unsigned
 */

Int8.min
Int8.max
UInt8.min
UInt8.max

/*:
 # Int & UInt
 */

MemoryLayout<Int>.size
Int.min
Int.max

let num = 123
type(of: num)


/*:
 # Floating-Point Types
 - Float : 4 Bytes
 - Double : 8 Bytes
 */

// 𝛑 = 3.141592653589793238462643383279502884197169
let floatPi: Float = 3.141592653589793238462643383279502884197169
print(floatPi)
let doublePi = 3.141592653589793238462643383279502884197169
print(doublePi)


//: [Next](@next)
