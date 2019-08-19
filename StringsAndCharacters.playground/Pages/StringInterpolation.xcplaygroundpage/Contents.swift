//: [Previous](@previous)

import Foundation

//: # String Interpolation

var str = "12.34KB"

let size = 12.34
str = String(size) + "KB"
str = "\(size)KB"

//: # Format Specifier
str = String(format: "%.1fKB", size)

String(format: "Hello, %@", "Swift")

String(format: "%d", 12)

String(format: "%010.3f", 12.34)

String(format: "[%d]", 123)
String(format: "[%10d]", 123)
String(format: "[%-10d]]", 123)

let firstName = "Yoon-ah"
let lastName = "Lim"

let korFormat = "그녀의 이름은 %2$@ %1$@ 입니다."
let engFormat = "Her name is %1$@ %2$@."
String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName)

//: # Escape sequency

str = "\\"
print(str)

print("A\tB")

print("C\nD")
print("\'Hello\', He said.")


//: [Next](@next)
