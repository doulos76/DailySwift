//: [Previous](@previous)

import Foundation

//: # Type casting

//: ## Type CheckOperator

//:     express is Type

let num = 123
num is Int
num is Double
num is String

class Figure {
  let name: String
  
  init(name: String) {
    self.name = name
  }
  
  func draw() {
    print("draw \(name)")
  }
}

class Rectangle: Figure {
  var width = 0.0
  var height = 0.0
  
  override func draw() {
    super.draw()
    print("⏹ \(width) x \(height)")
  }
}

class Square: Rectangle {
  
}

let c = Square(name: "Circle")
c is Rectangle
c is Figure
c is Square



let nsstr = "str" as NSString

//"atr" as Int



//: [Next](@next)
