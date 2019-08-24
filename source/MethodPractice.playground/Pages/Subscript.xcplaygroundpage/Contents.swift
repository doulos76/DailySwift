//: [Previous](@previous)

import Foundation

//: # Subscript

//:       instance[index]
//:       instance[key]
//:       instance[range]

let list = ["A", "B", "C"]
list[0]

//:       subscript(parameters) -> ReturnType {
//:         get {
//:           return expression
//:         }
//:         set(name) {
//:           statements
//:         }
//:       }

class List {
  var data = [1, 2, 3]
  
  subscript(i index: Int) -> Int {
    get {
      return data[index]
    }
    set {
      data[index] = newValue
    }
  }
}

var l = List()
l[i: 0]

l[i: 1] = 123

//l[0, 1]

//l["A"]

struct Matrix {
  var data = [[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]]
  
  subscript(row: Int, col: Int) -> Int {
    return data[row][col]
  }
}

let m = Matrix()
m[0, 0]

//: [Next](@next)
