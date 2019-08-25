//: [Previous](@previous)

import Foundation

//: # Class Initializers

//: ## Designated Initializer

//:       init(parameters) {
//:         initialization
//:       }

//: ## Convenience Initializer

//:       convenience init(parameters) {
//:         initialization
//:       }


class Position {
  var x: Double
  var y: Double
  
  init(x: Double, y: Double) {
    self.x = x
    self.y = y
  }
  
  convenience init(x: Double) {
    self.init(x: x, y: 0.0)
  }
}


//: ## Initializer Inheritance

class Figure {
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func draw() {
    print("draw \(name)")
  }
  
  convenience init() {
    self.init(name: "unKnown")
  }
}

class Rectangle: Figure {
  var width: Double = 0.0
  var height: Double = 0.0
  
  init(name: String, width: Double, height: Double) {
    self.width = width
    self.height = height
    super.init(name: name)
  }
  
  override init(name: String) {
    width = 0
    height = 0
    super.init(name: name)
  }
  
  convenience init() {
    self.init(name: "unKnown")
  }
}

//: [Next](@next)
