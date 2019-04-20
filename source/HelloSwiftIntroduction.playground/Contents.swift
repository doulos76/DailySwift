import UIKit

//: # Comment

// 한줄 주석

/*
 여러 줄 주석
 ...
 */

var str = /* inline comment */ "Hello, playground"
print(str)
//--> Hello, playground

debugPrint(str)
//--> "Hello, playground"

dump(str)
//--> - "Hello, playground"


//: # print
print("One two three four five")
print(1...5)
print(1.0, 2.0, 3.0, 4.0, 5.0)
print(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")


for n in 1...5 {
  print(n, terminator: "")
}

//: # dubugPrint
debugPrint("One two three four five")
debugPrint(1...5)
debugPrint(1.0, 2.0, 3.0, 4.0, 5.0)

debugPrint(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")

for n in 1...5 {
  debugPrint(n, terminator: "")
}

//: # dump
print("\n================[dump]================\n")

struct Coordinate {
  let x: Int
  let y: Int
  let name: String
}

let myCoordinate = Coordinate(x: 3, y: 5, name: "MyPosition")
dump(myCoordinate)
//▿ __lldb_expr_39.Coordinate
//  - x: 3
//  - y: 5
//  - name: "MyPosition"
print(myCoordinate)
// Coordinate(x: 3, y: 5, name: "MyPosition")
debugPrint(myCoordinate)
// __lldb_expr_39.Coordinate(x: 3, y: 5, name: "MyPosition")
