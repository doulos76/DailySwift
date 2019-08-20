//: [Previous](@previous)

import Foundation

//: # Initializer Syntax

//:       init(parameters) {
//:         statements
//:       }

let str = "123"
let num = Int(str)

class Position {
  var x: Double
  var y: Double
  
  init() {
    self.x = 0.0
    self.y = 0.0
  }
  
  init(value: Double) {
    x = value
    y = value
  }
}

let a = Position()
a.x
a.y


let b = Position(value: 100)
b.x
b.y



//: [Next](@next)
