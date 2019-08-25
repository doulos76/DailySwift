//: [Previous](@previous)

import Foundation

//: # Required Initializer

//: ## Value Type

struct Size {
  var width: Double = 0.0
  var height: Double = 0.0
  
  init(w: Double, h: Double) {
    width = w
    height = h
  }
  
  init(value: Double) {
    self.init(w: value, h: value)
  }
}

//: ## Class

class Figure {
  let name: String
  
  init(name: String) {
    self.name = name
  }
  
  // delegat across
  convenience init() {
    self.init(name: "unknown")
  }
}

class Rectangle: Figure {
  var widht = 0.0
  var height = 0.0
  
  init(n: String, w: Double, h: Double) {
    widht = w
    height = h
    super.init(name: n)
  }
  
  convenience init(value: Double) {
    self.init(n: "rect", w: value, h: value)
  }
}

class Square: Rectangle {
  convenience init(value: Double) {
    self.init(n: "square", w: value, h: value)
  }
  
  convenience init() {
    self.init(value: 0.0)
  }
}
//: [Next](@next)
