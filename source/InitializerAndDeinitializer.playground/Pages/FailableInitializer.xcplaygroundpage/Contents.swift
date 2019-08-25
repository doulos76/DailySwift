//: [Previous](@previous)

import Foundation

//: # Failable initializer

//:       init?(parameters) {
//:         initialization
//:       }

//:       init!(parameters) {
//:         initialization
//:       }

struct Position {
  let x: Double
  let y: Double
  
  init?(x: Double, y: Double) {
    guard x >= 0.0, y >= 0.0 else { return nil }
    self.x = x
    self.y = y
  }
  
  init!(value: Double) {
    guard value >= 0.0 else { return nil }
    
//    self.x = value
//    self.y = value
    
    self.init(x: value, y: value)
  }
  
//  init(value: Int) {
//    self.x = value
//    self.y = value
//  }
}

var a = Position(x: 12, y: 34)

a = Position(x: -12, y: 0)

var b: Position = Position(value: 12)
b
//b = Position(value: -12)
//: [Next](@next)
