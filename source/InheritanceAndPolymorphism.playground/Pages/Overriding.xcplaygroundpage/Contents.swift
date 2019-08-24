//: [Previous](@previous)

import Foundation

//: # Overriding

class Figure {
  var name = "Unknown"
  
  init(name: String) {
    self.name = name
  }
  
  func draw() {
    print("draw \(name)")
  }
}

class Circle: Figure {
  var radius = 0.0
  var diameter: Double {
    get {
      return radius * 2
    }
  }
  
  override func draw() {
    super.draw()
     print("👍")
  }
}

let c = Circle(name: "Circle")
c.draw()

class Oval: Circle {
  
  override var diameter: Double {
    get {
      return super.diameter
    }
    set {
      super.radius = newValue / 2
    }
  }
  
  override var radius: Double {
    willSet {
      print(newValue)
    }
    didSet {
      print(oldValue)
    }
  }
}




//: [Next](@next)
