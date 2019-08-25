//: [Previous](@previous)

import Foundation

//: # Required Initializer

//:       required init(parameters) {
//:         initialization
//:       }

class Figure {
  var name: String
  
  required init(name: String) {
    self.name = name
  }
  
  func draw() {
    print("draw \(name)")
  }
}

class Rectangle: Figure {
  var width: Double = 0.0
  var height: Double = 0.0

  init() {
    width = 0.0
    height = 0.0
    super.init(name: "unknown")
  }
  
  required init(name: String) {
    width = 0.0
    height = 0.0
    super.init(name: name)
  }
}


//: [Next](@next)
